require 'test_helper'

class ProgrammesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:programmes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_programme
    assert_difference('Programme.count') do
      post :create, :programme => { }
    end

    assert_redirected_to programme_path(assigns(:programme))
  end

  def test_should_show_programme
    get :show, :id => programmes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => programmes(:one).id
    assert_response :success
  end

  def test_should_update_programme
    put :update, :id => programmes(:one).id, :programme => { }
    assert_redirected_to programme_path(assigns(:programme))
  end

  def test_should_destroy_programme
    assert_difference('Programme.count', -1) do
      delete :destroy, :id => programmes(:one).id
    end

    assert_redirected_to programmes_path
  end
end
