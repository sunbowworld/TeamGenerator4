require 'test_helper'

class TeamsVersusInformationsControllerTest < ActionController::TestCase
  setup do
    @teams_versus_information = teams_versus_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams_versus_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teams_versus_information" do
    assert_difference('TeamsVersusInformation.count') do
      post :create, teams_versus_information: { score: @teams_versus_information.score, team_id: @teams_versus_information.team_id, versus_information_id: @teams_versus_information.versus_information_id }
    end

    assert_redirected_to teams_versus_information_path(assigns(:teams_versus_information))
  end

  test "should show teams_versus_information" do
    get :show, id: @teams_versus_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teams_versus_information
    assert_response :success
  end

  test "should update teams_versus_information" do
    patch :update, id: @teams_versus_information, teams_versus_information: { score: @teams_versus_information.score, team_id: @teams_versus_information.team_id, versus_information_id: @teams_versus_information.versus_information_id }
    assert_redirected_to teams_versus_information_path(assigns(:teams_versus_information))
  end

  test "should destroy teams_versus_information" do
    assert_difference('TeamsVersusInformation.count', -1) do
      delete :destroy, id: @teams_versus_information
    end

    assert_redirected_to teams_versus_informations_path
  end
end
