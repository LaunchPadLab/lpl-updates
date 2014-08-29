class Project < ActiveRecord::Base
	has_many :status_updates
  has_many :team_members
  has_many :users, :through => :team_members
	belongs_to :company

  def recent_updates
    self.status_updates.recent
  end

  def recently_updated?
    recent_updates.count > 0
  end

  def team_lead
    self.users.first
  end

  def email
    "inbound" + self.id.to_s + ENV['INBOUND_EMAIL']
  end

end
