class AddCompanyToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :company, index: true
  end
end
