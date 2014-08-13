namespace :email do

  task :weekly_project_update => :environment do
    Project.each do |project|
      UpdateMailer.weekly_update(project).deliver
    end
  end

  task :test_weekly_project_update => :environment do
    company = Company.find_by_id(1)
    UpdateMailer.weekly_update(company).deliver
  end

  task :test_weekly_update_request => :environment do
    project = Project.find_by(name: "test")
    UpdateMailer.updates_request(project).deliver
  end

end
