
myApp.factory("PostResource", ['$resource',
    function($resource) {
        var PostResource;
        PostResource = $resource("/posts/:id",
            {
                id: "@id"
            },
            {
                update: {
                    method: "PUT"
                }
            }
        );
        PostResource.prototype.update = function(callback){
            return PostResource.update({
                id: this.id
            }, callback);
        };
        console.log('post factory');
        
        return PostResource;
    }
]);

myApp.controller('PostCtrl',function($scope, $resource, PostResource){
    $scope.posts = PostResource.query();
    
    // Add
    $scope.addPost = function(){
        var post = new PostResource();
        post.title = $scope.postNewTitleAdd;
        post.body = $scope.postNewBodyAdd;
        post.$save(function(newPost){
            $scope.posts.push(newPost);
        });
        // PostResource.save(post,function(newPost){
        //     $scope.posts.push(newPost);
        // });
    };

    // Get post and console the object that returns
    $scope.getPost = function(){
        PostResource.get({id: $scope.postIDGet}, function(post){
            console.log(post);
        })
    };

    // Update
    $scope.updatePost = function(){
        var post = $scope.posts.filter(function(obj){ if(obj.id == $scope.postNewUpdateID) return true})[0];
        if(post){
            post.title = $scope.postNewTitleUpdate;
            post.body = $scope.postNewBodyUpdate;
            post.update(function(){});
        };
    };

    // Delete
    $scope.deletePost = function(){
        var post = $scope.posts.filter(function(obj){ if(obj.id == $scope.postIDDelete) return true})[0];
        if(post){
            post.$delete(function(post){
                var index = $scope.posts.indexOf(post);
                $scope.posts.splice(index,1);
            });
        };
    };

});
