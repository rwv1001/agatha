require 'test_helper'

class StudentProgrammesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_programmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_programme" do
    assert_difference('StudentProgramme.count') do
      post :create, :student_programme => { }
    end

    assert_redirected_to student_programme_path(assigns(:student_programme))
  end

  test "should show student_programme" do
    get :show, :id => student_programmes(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => student_programmes(:one).id
    assert_response :success
  end

  test "should update student_programme" do
    put :update, :id => student_programmes(:one).id, :student_programme => { }
    assert_redirected_to student_programme_path(assigns(:student_programme))
  end

  test "should destroy student_programme" do
    assert_difference('StudentProgramme.count', -1) do
      delete :destroy, :id => student_programmes(:one).id
    end

    assert_redirected_to student_programmes_path
  end
end
