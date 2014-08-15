# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team_member do
    project_id 1
    user_id 1
    project_lead false
  end
end
