class AddScheduleRefToHours < ActiveRecord::Migration
  def change
    add_column :hours, :schedule_id, :integer
    add_index :hours, :schedule_id
  end
end
