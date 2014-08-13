namespace :email do

  task :weekly_project_update => :environment do
    Company.all.each do |company|
      UpdateMailer.weekly_update(company).deliver
    end
  end

  task :weekly_update_request => :environment do
    Project.all.each do |project|
      UpdateMailer.updates_request(project).deliver
    end
  end

  task :test_weekly_project_update => :environment do
    company = Company.first
    UpdateMailer.weekly_update(company).deliver
  end

  task :test_weekly_update_request => :environment do
    project = Company.first.projects.first
    UpdateMailer.updates_request(project).deliver
  end

end
