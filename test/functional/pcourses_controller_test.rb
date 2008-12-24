require 'test_helper'

class PcoursesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pcourse" do
    assert_difference('Pcourse.count') do
      post :create, :pcourse => { }
    end

    assert_redirected_to pcourse_path(assigns(:pcourse))
  end

  test "should show pcourse" do
    get :show, :id => pcourses(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pcourses(:one).id
    assert_response :success
  end

  test "should update pcourse" do
    put :update, :id => pcourses(:one).id, :pcourse => { }
    assert_redirected_to pcourse_path(assigns(:pcourse))
  end

  test "should destroy pcourse" do
    assert_difference('Pcourse.count', -1) do
      delete :destroy, :id => pcourses(:one).id
    end

    assert_redirected_to pcourses_path
  end
end
