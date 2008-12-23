require 'test_helper'

class AttendeesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:attendees)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_attendee
    assert_difference('Attendee.count') do
      post :create, :attendee => { }
    end

    assert_redirected_to attendee_path(assigns(:attendee))
  end

  def test_should_show_attendee
    get :show, :id => attendees(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => attendees(:one).id
    assert_response :success
  end

  def test_should_update_attendee
    put :update, :id => attendees(:one).id, :attendee => { }
    assert_redirected_to attendee_path(assigns(:attendee))
  end

  def test_should_destroy_attendee
    assert_difference('Attendee.count', -1) do
      delete :destroy, :id => attendees(:one).id
    end

    assert_redirected_to attendees_path
  end
end
