class Project < ActiveRecord::Base
	has_many :status_updates
  has_many :team_members
  has_many :users, :through => :team_members
	belongs_to :company

  def recent_updates
    self.status_updates.where("created_at >= ?", 1.week.ago.utc)
  end

  def team_lead
    self.users.first
  end

end
