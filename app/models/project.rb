class Project < ActiveRecord::Base
	has_many :status_updates
	belongs_to :company
end
