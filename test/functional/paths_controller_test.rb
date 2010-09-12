require 'test_helper'

class PathsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create path" do
    assert_difference('Path.count') do
      post :create, :path => { }
    end

    assert_redirected_to path_path(assigns(:path))
  end

  test "should show path" do
    get :show, :id => paths(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => paths(:one).to_param
    assert_response :success
  end

  test "should update path" do
    put :update, :id => paths(:one).to_param, :path => { }
    assert_redirected_to path_path(assigns(:path))
  end

  test "should destroy path" do
    assert_difference('Path.count', -1) do
      delete :destroy, :id => paths(:one).to_param
    end

    assert_redirected_to paths_path
  end
end
