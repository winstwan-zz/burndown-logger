class AddUserRefToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :user_id, :integer
    add_index :schedules, :user_id
  end
end
