json.array!(@matches) do |match|
  json.extract! match, :id, :team_one, :team_two, :cpu_game, :player_one_id, :player_two_id, :player_one_score, :player_two_score, :is_tie, :winner
  json.url match_url(match, format: :json)
end
