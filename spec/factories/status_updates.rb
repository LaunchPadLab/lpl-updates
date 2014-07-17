# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :status_update do
    description "MyText"
    project nil
    user nil
  end
end
