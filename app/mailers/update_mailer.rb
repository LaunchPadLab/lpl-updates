class UpdateMailer < ActionMailer::Base
  default from: ENV['OUTBOUND_EMAIL'],
          reply_to: "inbound" + ENV['INBOUND_EMAIL']

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
    mail to: @team_lead, reply_to: @project.email, subject: "Updates this week?"
  end

end
