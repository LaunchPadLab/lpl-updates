class Project < ActiveRecord::Base
	has_many :status_updates
  has_many :team_members
  has_many :users, :through => :team_members
	belongs_to :company
end
