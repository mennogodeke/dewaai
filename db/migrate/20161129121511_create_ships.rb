class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.boolean :damaged

      t.timestamps
    end
  end
end
