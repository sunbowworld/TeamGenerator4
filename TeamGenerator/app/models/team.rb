class Team < ActiveRecord::Base
  has_and_belongs_to_many :steam_users
  has_and_belongs_to_many :versus_informations
  has_one :teams_versus_information
end
