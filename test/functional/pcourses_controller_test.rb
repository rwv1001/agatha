require 'test_helper'

class PcoursesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pcourses)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pcourse
    assert_difference('Pcourse.count') do
      post :create, :pcourse => { }
    end

    assert_redirected_to pcourse_path(assigns(:pcourse))
  end

  def test_should_show_pcourse
    get :show, :id => pcourses(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pcourses(:one).id
    assert_response :success
  end

  def test_should_update_pcourse
    put :update, :id => pcourses(:one).id, :pcourse => { }
    assert_redirected_to pcourse_path(assigns(:pcourse))
  end

  def test_should_destroy_pcourse
    assert_difference('Pcourse.count', -1) do
      delete :destroy, :id => pcourses(:one).id
    end

    assert_redirected_to pcourses_path
  end
end
