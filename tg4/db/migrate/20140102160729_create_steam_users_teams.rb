class CreateSteamUsersTeams < ActiveRecord::Migration
  def change
    create_table :steam_users_teams do |t|
      t.integer :steam_user_id
      t.integer :team_id

      t.timestamps
    end
  end
end
