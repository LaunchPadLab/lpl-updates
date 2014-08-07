class UpdateMailer < ActionMailer::Base
  default from: "from@example.com",
          reply_to: "inbound@katie32291.bymail.in"

  def weekly_update(project)
    @project = project
    @team_members = project.users
    @team_members.each do |team_member|
      @team_member = team_member
      mail to: team_member.email, reply_to: "inbound" + @project.id.to_s + "@katie32291.bymail.in", subject: "Weekly Project Update"
    end
  end

end
