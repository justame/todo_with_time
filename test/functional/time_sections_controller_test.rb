require 'test_helper'

class TimeSectionsControllerTest < ActionController::TestCase
  setup do
    @time_section = time_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_section" do
    assert_difference('TimeSection.count') do
      post :create, time_section: { integer: @time_section.integer, time_end: @time_section.time_end, time_start: @time_section.time_start, time_total: @time_section.time_total }
    end

    assert_redirected_to time_section_path(assigns(:time_section))
  end

  test "should show time_section" do
    get :show, id: @time_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_section
    assert_response :success
  end

  test "should update time_section" do
    put :update, id: @time_section, time_section: { integer: @time_section.integer, time_end: @time_section.time_end, time_start: @time_section.time_start, time_total: @time_section.time_total }
    assert_redirected_to time_section_path(assigns(:time_section))
  end

  test "should destroy time_section" do
    assert_difference('TimeSection.count', -1) do
      delete :destroy, id: @time_section
    end

    assert_redirected_to time_sections_path
  end
end
