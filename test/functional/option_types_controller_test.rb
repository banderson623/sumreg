require 'test_helper'

class OptionTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:option_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_option_type
    assert_difference('OptionType.count') do
      post :create, :option_type => { }
    end

    assert_redirected_to option_type_path(assigns(:option_type))
  end

  def test_should_show_option_type
    get :show, :id => option_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => option_types(:one).id
    assert_response :success
  end

  def test_should_update_option_type
    put :update, :id => option_types(:one).id, :option_type => { }
    assert_redirected_to option_type_path(assigns(:option_type))
  end

  def test_should_destroy_option_type
    assert_difference('OptionType.count', -1) do
      delete :destroy, :id => option_types(:one).id
    end

    assert_redirected_to option_types_path
  end
end
