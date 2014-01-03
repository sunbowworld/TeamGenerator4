require 'test_helper'

class VersusInformationsControllerTest < ActionController::TestCase
  setup do
    @versus_information = versus_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:versus_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create versus_information" do
    assert_difference('VersusInformation.count') do
      post :create, versus_information: { versus_at: @versus_information.versus_at }
    end

    assert_redirected_to versus_information_path(assigns(:versus_information))
  end

  test "should show versus_information" do
    get :show, id: @versus_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @versus_information
    assert_response :success
  end

  test "should update versus_information" do
    patch :update, id: @versus_information, versus_information: { versus_at: @versus_information.versus_at }
    assert_redirected_to versus_information_path(assigns(:versus_information))
  end

  test "should destroy versus_information" do
    assert_difference('VersusInformation.count', -1) do
      delete :destroy, id: @versus_information
    end

    assert_redirected_to versus_informations_path
  end
end
