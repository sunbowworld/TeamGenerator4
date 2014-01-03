class CreateTeamsVersusInformations < ActiveRecord::Migration
  def change
    create_table :teams_versus_informations do |t|
      t.integer :versus_information_id
      t.integer :team_id
      t.integer :score

      t.timestamps
    end
  end
end
