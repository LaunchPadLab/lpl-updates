class AddDetailsToStatusUpdates < ActiveRecord::Migration
  def change
    add_column :status_updates, :milestone, :date
    add_column :status_updates, :weekly_rating, :integer
  end
end
