require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { cpu_game: @match.cpu_game, is_tie: @match.is_tie, player_one_id: @match.player_one_id, player_one_score: @match.player_one_score, player_two_id: @match.player_two_id, player_two_score: @match.player_two_score, team_one: @match.team_one, team_two: @match.team_two, winner: @match.winner }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { cpu_game: @match.cpu_game, is_tie: @match.is_tie, player_one_id: @match.player_one_id, player_one_score: @match.player_one_score, player_two_id: @match.player_two_id, player_two_score: @match.player_two_score, team_one: @match.team_one, team_two: @match.team_two, winner: @match.winner }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
