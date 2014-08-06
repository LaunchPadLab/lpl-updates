namespace :email do

  task :weekly_project_update => :environment do
    Project.each do |project|
      UpdateMailer.weekly_update(project).deliver
    end
  end

  task :test_weekly_project_update => :environment do
    project = Project.find_by(name: "test")
    UpdateMailer.weekly_update(project).deliver
  end

end
