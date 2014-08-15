class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.integer :project_id
      t.integer :user_id
      t.boolean :project_lead

      t.timestamps
    end
  end
end
