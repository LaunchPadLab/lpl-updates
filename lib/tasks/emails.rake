namespace :email do

  task :weekly_project_update => :environment do
    if Date.today.wday == 1
      Company.all.each do |company|
        company.users.each do |employee|
          UpdateMailer.weekly_update(company, employee).deliver
        end
      end
    end
  end

  task :weekly_update_request => :environment do
    if Date.today.wday == 5
      Project.all.each do |project|
        if project.team_lead
          UpdateMailer.updates_request(project).deliver
        end
      end
    end
  end

  task :test_weekly_project_update => :environment do
    company = Company.first
    UpdateMailer.weekly_update(company, User.find_by_username("kt32291")).deliver
  end

  task :test_weekly_update_request => :environment do
    project = Company.first.projects.find_by_name("Test")
    UpdateMailer.updates_request(project).deliver
  end

end
