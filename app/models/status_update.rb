class StatusUpdate < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  scope :by_created_on, -> { order('created_at DESC') }
end
