class AddDetailsToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :name, :string
    add_column :schedules, :notes, :string
  end
end
