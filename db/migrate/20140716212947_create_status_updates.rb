class CreateStatusUpdates < ActiveRecord::Migration
  def change
    create_table :status_updates do |t|
      t.text :description
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
