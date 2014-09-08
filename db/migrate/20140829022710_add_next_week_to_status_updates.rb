class AddNextWeekToStatusUpdates < ActiveRecord::Migration
  def change
    add_column :status_updates, :next_week, :text
  end
end
