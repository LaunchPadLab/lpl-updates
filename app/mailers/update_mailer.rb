class UpdateMailer < ActionMailer::Base
  default from: ENV['OUTBOUND_EMAIL'],
          reply_to: "inbound" + ENV['INBOUND_EMAIL']

  def weekly_update(company, employee)
    @company = company
    mail to: employee.email, subject: "#{company.name} Weekly Digest"
  end

  def updates_request(project)
    @project = project
    @team_lead = project.team_lead
    mail to: @team_lead.email, reply_to: @project.email, subject: "#{@project.name} Updates?"
  end

end
