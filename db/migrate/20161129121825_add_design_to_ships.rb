class AddDesignToShips < ActiveRecord::Migration[5.0]
  def change
    add_reference :ships, :design, foreign_key: true
  end
end
