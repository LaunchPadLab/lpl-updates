class AddCompanyIdToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :company, index: true
  end
end
