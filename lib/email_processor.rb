class EmailProcessor

  def self.process(email)
    user = User.find_by_email(@email.from[:email])
    project_id = @email.to[:token].slice!("inbound").to_i
    user.status_updates.create!(
      description: @email.body,
      user_id: user.id,
      project_id: project_id
    )
  end

end
