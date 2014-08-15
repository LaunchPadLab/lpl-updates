class StatusUpdate < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  scope :by_created_on, -> { order('created_at DESC') }

  scope :recent, -> { where('created_at >= ?', 1.week.ago.utc) }
end

