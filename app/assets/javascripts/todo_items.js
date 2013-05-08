

// filter
angular.module('filters', []).filter('secondsToTimeFormat', function() {
    return function(secondsStr) {
        var secondsInt = parseInt(secondsStr);
        var hours = Math.floor(secondsInt / 3600);
        var minutes = Math.floor((secondsInt - (hours * 3600)) / 60);
        var seconds = secondsInt - (hours * 3600) - (minutes * 60);

        if (hours < 10) {
            hours = "0" + hours;
        }
        if (minutes < 10) {
            minutes = "0" + minutes;
        }
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        var time = hours + ':' + minutes + ':' + seconds;
        return time;
    };
});
angular.module("todo_item",['ngResource']).factory("TodoItemResource", ['$resource',
    function($resource) {
        var TodoItem;
        TodoItem = $resource("/todo_items/:id",
            {
                id: "@id"
            },
            {
                update: 
                {
                    method: "PUT"
                }
            }
        );
        TodoItem.prototype.update = function(data){
            var params = this;
            if(arguments.length === 1 && !!data !== false){ 
                params = data;
            };
            return TodoItem.update({
                id: this.id
            }, params);
        };
        
        return TodoItem;
    }
]).controller('TodoItemCtrl',function($scope, $resource, TodoItemResource){
    $scope.todoItems = gon.todo_items//TodoItemResource.query();
    
    // Add
    $scope.addTodoItem = function(){
        if ($scope.todoNewItemText.trim().length == 0) {
            return;
        };
        
        var todoItem = new TodoItemResource();
        todoItem.title = $scope.todoNewItemText;
        todoItem.time_estimate = 0;
        todoItem.time_total = 0;
        todoItem.$save(function(newPost){
            $scope.todoItems.push(todoItem);
        });
        
        $scope.todoNewItemText = '';
    };
    
    $scope.setTodoItemTimeEstimate = function(){
        var time = prompt('time estimate in seconds');
        if(time){ 
            this.todoItem.time_estimate = time;
            //this.todoItem.update();
            this.todoItem.update({'time_estimate': this.todoItem.time_estimate});
        };
    };

    // Delete
    $scope.deleteTodoItem = function(){
        var todoItem = this.todoItem;
        todoItem.$delete(function(todoItem){
            var index = $scope.todoItems.indexOf(todoItem);
            $scope.todoItems.splice(index,1);
        });
    };

});


// function parent(){ 
//     var name = 'yaron';
//     function child(){ 
//         console.log(name);
//         uncle.apply(this);
//     };
//     child();
// };

// function uncle(){ 
//     debugger;
//     console.log(this.name);
// };