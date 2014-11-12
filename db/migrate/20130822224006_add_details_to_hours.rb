class AddDetailsToHours < ActiveRecord::Migration
  def change
    add_column :hours, :hours, :float
    add_column :hours, :notes, :string
  end
end
