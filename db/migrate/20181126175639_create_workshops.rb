class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :capacity
      t.string :difficulty
      t.text :description
      t.string :area
      t.string :date
      t.text :syllabus

      t.timestamps
    end
  end
end
