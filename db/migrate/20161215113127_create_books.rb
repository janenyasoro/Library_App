class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :isbn
      t.integer :quantity

      t.timestamps
    end
  end
end
