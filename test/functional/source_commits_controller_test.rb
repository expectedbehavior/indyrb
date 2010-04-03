require 'test_helper'

class SourceCommitsControllerTest < ActionController::TestCase

  test "should create source_commit" do
    SourceCommit.any_instance.expects(:save).returns(true)
    post :create, :source_commit => { }
    assert_response :redirect
  end

  test "should handle failure to create source_commit" do
    SourceCommit.any_instance.expects(:save).returns(false)
    post :create, :source_commit => { }
    assert_template "new"
  end

  test "should destroy source_commit" do
    SourceCommit.any_instance.expects(:destroy).returns(true)
    delete :destroy, :id => source_commits(:one).to_param
    assert_not_nil flash[:notice]    
    assert_response :redirect
  end

  test "should handle failure to destroy source_commit" do
    SourceCommit.any_instance.expects(:destroy).returns(false)    
    delete :destroy, :id => source_commits(:one).to_param
    assert_not_nil flash[:error]
    assert_response :redirect
  end

  test "should get edit for source_commit" do
    get :edit, :id => source_commits(:one).to_param
    assert_response :success
  end

  test "should get index for source_commits" do
    get :index
    assert_response :success
    assert_not_nil assigns(:source_commits)
  end

  test "should get new for source_commit" do
    get :new
    assert_response :success
  end

  test "should get show for source_commit" do
    get :show, :id => source_commits(:one).to_param
    assert_response :success
  end

  test "should update source_commit" do
    SourceCommit.any_instance.expects(:save).returns(true)
    put :update, :id => source_commits(:one).to_param, :source_commit => { }
    assert_response :redirect
  end

  test "should handle failure to update source_commit" do
    SourceCommit.any_instance.expects(:save).returns(false)
    put :update, :id => source_commits(:one).to_param, :source_commit => { }
    assert_template "edit"
  end

end