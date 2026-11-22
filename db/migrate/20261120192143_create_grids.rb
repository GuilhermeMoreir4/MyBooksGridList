class CreateGrids < ActiveRecord::Migration[8.0]
  def change
    create_table :grids do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
