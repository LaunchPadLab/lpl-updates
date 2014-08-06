class UpdateMailer < ActionMailer::Base
  default from: "from@example.com"

  def weekly_update(project)
    @project = project
    @team_members = project.users
    @team_members.each do |team_member|
      @team_member = team_member
      mail to: team_member.email, subject: "Weekly Project Update"
    end
  end

end