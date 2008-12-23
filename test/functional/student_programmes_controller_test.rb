require 'test_helper'

class StudentProgrammesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:student_programmes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_student_programme
    assert_difference('StudentProgramme.count') do
      post :create, :student_programme => { }
    end

    assert_redirected_to student_programme_path(assigns(:student_programme))
  end

  def test_should_show_student_programme
    get :show, :id => student_programmes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => student_programmes(:one).id
    assert_response :success
  end

  def test_should_update_student_programme
    put :update, :id => student_programmes(:one).id, :student_programme => { }
    assert_redirected_to student_programme_path(assigns(:student_programme))
  end

  def test_should_destroy_student_programme
    assert_difference('StudentProgramme.count', -1) do
      delete :destroy, :id => student_programmes(:one).id
    end

    assert_redirected_to student_programmes_path
  end
end
