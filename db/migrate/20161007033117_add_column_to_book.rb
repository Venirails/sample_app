class AddColumnToBook < ActiveRecord::Migration
  def change
	  add_column :books,:publisher,:string
	  remove_timestamps :employees
	  add_column :employees, :salary,:decimal
  end
end
