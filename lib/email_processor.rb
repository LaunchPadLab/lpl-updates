class EmailProcessor

  def self.process(email)
    user = User.find_by_email(@email.from[:email])
    user.status_updates.create!(
      description: @email.body,
      user_id: 2,
      project_id: 8
    )
  end

end
