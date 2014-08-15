source 'https://rubygems.org'

ruby "2.1.1"

# Rails Default
gem 'rails', '4.1.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc, require: false

# Our Gems
gem 'foreman'
gem 'figaro'
gem 'griddler'
gem 'griddler-sendgrid'
gem 'newrelic_rpm'
gem "devise", "~> 3.2.4"
gem 'omniauth-github'
gem 'foundation-rails'
gem 'friendly_id', '~> 5.0.0'
gem 'rails4-autocomplete'
gem 'jquery-ui-rails'


group :production, :staging do
	gem 'rails_12factor'
end

group :development do
  gem 'quiet_assets'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem "bullet"
end

group :development, :test do
	gem 'rspec-rails', '~> 3.0.0'
	gem 'factory_girl_rails'
	gem 'capybara', '~> 2.3.0'
  gem 'database_cleaner'
end

