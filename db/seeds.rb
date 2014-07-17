if Rails.env.development?
	User.destroy_all
  Company.destroy_all
  Project.destroy_all
  StatusUpdate.destroy_all

  user = User.create!(email: 'scott@launchpadlab.com', username: 'scottweisman')

	company = Company.create!(name: 'LaunchPad Lab')

	projects = ["Content Lab", "MDA", "Tukaiz"]

	projects.each do |name|
		Project.create!(name: name, company_id: company.id)
	end

	status_updates = [
		"Milestone 1 is complete. Need to clean up some user actions. Start milestone 2 - admin posting features",
		"Tukaiz will deliver HTML of home pages (Schools template and Meritas template) this week - most likely Wednesday. Once I have those HTML pages I can embed them into Wagon and start making them dynamic / editable. We aren't meeting this week due to July 4th holiday",
		"Tukaiz sending us HTML files today",
		"Initial design done. Development to be finished this week",
		"Goldie will get back in touch around August to tell us exactly what he wants so we can finish up the site",
		"Client ok’d project to start. Need to get deliverables in Trello",
		"Currently, I am researching the best way for users to add pages based on a template. From what I can tell so far, this can be done via page nesting"
	]

	status_updates.each do |status_update|
		project = Project.all.sample
		project.status_updates.create!(description: status_update, user_id: user.id)
	end


  puts "Database ready for use."
else
  puts "Don't delete the production database!"
end