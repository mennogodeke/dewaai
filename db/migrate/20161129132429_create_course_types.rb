class CreateCourseTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :course_types do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :ship_amount
      t.references :design, foreign_key: true

      t.timestamps
    end
  end
end
