class Company < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_many :projects
	has_many :users
end
