class AddUsernameToTeamMember < ActiveRecord::Migration
  def change
    add_column :team_members, :username, :string
  end
end
