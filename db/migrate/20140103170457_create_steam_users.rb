class CreateSteamUsers < ActiveRecord::Migration
  def change
    create_table :steam_users do |t|
      t.string :steam_id_64
    end
  end
end