class CreateVersusInformations < ActiveRecord::Migration
  def change
    create_table :versus_informations do |t|
      t.datetime :versus_at
      t.integer :team1_id
      t.integer :team1_score
      t.integer :team2_id
      t.integer :team2_score
    end
  end
end
