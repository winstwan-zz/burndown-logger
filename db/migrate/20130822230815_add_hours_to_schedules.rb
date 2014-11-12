class AddHoursToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :hours_allotted, :float
  end
end
