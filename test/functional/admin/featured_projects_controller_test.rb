require 'test_helper'

class Admin::FeaturedProjectsControllerTest < ActionController::TestCase

  test "should create featured_project" do
    Admin::FeaturedProject.any_instance.expects(:save).returns(true)
    post :create, :featured_project => { }
    assert_response :redirect
  end

  test "should handle failure to create featured_project" do
    Admin::FeaturedProject.any_instance.expects(:save).returns(false)
    post :create, :featured_project => { }
    assert_template "new"
  end

  test "should destroy featured_project" do
    Admin::FeaturedProject.any_instance.expects(:destroy).returns(true)
    delete :destroy, :id => admin_featured_projects(:one).to_param
    assert_not_nil flash[:notice]    
    assert_response :redirect
  end

  test "should handle failure to destroy featured_project" do
    Admin::FeaturedProject.any_instance.expects(:destroy).returns(false)    
    delete :destroy, :id => admin_featured_projects(:one).to_param
    assert_not_nil flash[:error]
    assert_response :redirect
  end

  test "should get edit for featured_project" do
    get :edit, :id => admin_featured_projects(:one).to_param
    assert_response :success
  end

  test "should get index for featured_projects" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_featured_projects)
  end

  test "should get new for featured_project" do
    get :new
    assert_response :success
  end

  test "should get show for featured_project" do
    get :show, :id => admin_featured_projects(:one).to_param
    assert_response :success
  end

  test "should update featured_project" do
    Admin::FeaturedProject.any_instance.expects(:save).returns(true)
    put :update, :id => admin_featured_projects(:one).to_param, :featured_project => { }
    assert_response :redirect
  end

  test "should handle failure to update featured_project" do
    Admin::FeaturedProject.any_instance.expects(:save).returns(false)
    put :update, :id => admin_featured_projects(:one).to_param, :featured_project => { }
    assert_template "edit"
  end

end