class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.decimal :price
      t.integer :year

      t.timestamps
    end
  end
end
