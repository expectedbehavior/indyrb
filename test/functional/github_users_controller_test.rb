require 'test_helper'

class GithubUsersControllerTest < ActionController::TestCase

  test "should create github_user" do
    GithubUser.any_instance.expects(:save).returns(true)
    post :create, :github_user => { }
    assert_response :redirect
  end

  test "should handle failure to create github_user" do
    GithubUser.any_instance.expects(:save).returns(false)
    post :create, :github_user => { }
    assert_template "new"
  end

  test "should destroy github_user" do
    GithubUser.any_instance.expects(:destroy).returns(true)
    delete :destroy, :id => github_users(:one).to_param
    assert_not_nil flash[:notice]    
    assert_response :redirect
  end

  test "should handle failure to destroy github_user" do
    GithubUser.any_instance.expects(:destroy).returns(false)    
    delete :destroy, :id => github_users(:one).to_param
    assert_not_nil flash[:error]
    assert_response :redirect
  end

  test "should get edit for github_user" do
    get :edit, :id => github_users(:one).to_param
    assert_response :success
  end

  test "should get index for github_users" do
    get :index
    assert_response :success
    assert_not_nil assigns(:github_users)
  end

  test "should get new for github_user" do
    get :new
    assert_response :success
  end

  test "should get show for github_user" do
    get :show, :id => github_users(:one).to_param
    assert_response :success
  end

  test "should update github_user" do
    GithubUser.any_instance.expects(:save).returns(true)
    put :update, :id => github_users(:one).to_param, :github_user => { }
    assert_response :redirect
  end

  test "should handle failure to update github_user" do
    GithubUser.any_instance.expects(:save).returns(false)
    put :update, :id => github_users(:one).to_param, :github_user => { }
    assert_template "edit"
  end

end