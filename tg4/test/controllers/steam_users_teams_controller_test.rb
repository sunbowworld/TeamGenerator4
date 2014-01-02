require 'test_helper'

class SteamUsersTeamsControllerTest < ActionController::TestCase
  setup do
    @steam_users_team = steam_users_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_users_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_users_team" do
    assert_difference('SteamUsersTeam.count') do
      post :create, steam_users_team: { steam_user_id: @steam_users_team.steam_user_id, team_id: @steam_users_team.team_id }
    end

    assert_redirected_to steam_users_team_path(assigns(:steam_users_team))
  end

  test "should show steam_users_team" do
    get :show, id: @steam_users_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_users_team
    assert_response :success
  end

  test "should update steam_users_team" do
    patch :update, id: @steam_users_team, steam_users_team: { steam_user_id: @steam_users_team.steam_user_id, team_id: @steam_users_team.team_id }
    assert_redirected_to steam_users_team_path(assigns(:steam_users_team))
  end

  test "should destroy steam_users_team" do
    assert_difference('SteamUsersTeam.count', -1) do
      delete :destroy, id: @steam_users_team
    end

    assert_redirected_to steam_users_teams_path
  end
end
