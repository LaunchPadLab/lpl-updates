class UpdateMailer < ActionMailer::Base
  default from: "from@example.com",
          reply_to: "inbound@katie32291.bymail.in"

  def weekly_update(company)
    @company = company
    @employees = company.users
    @employees.each do |employee|
      @employee = employee
      mail to: employee.email
    end
  end

  def updates_request(project)
    @project = project
    @team_lead = project.team_lead
    mail to: @team_lead.email, reply_to: "inbound" + @project.id.to_s + "@katie32291.bymail.in", subject: "Updates this week?"
  end

end
