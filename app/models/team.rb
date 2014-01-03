class Team < ActiveRecord::Base
  has_and_belongs_to_many :steam_users
  def versus_informations
  	VersusInformation.where("team1_id = ? OR team2_id = ?",id,id)
  end
end
