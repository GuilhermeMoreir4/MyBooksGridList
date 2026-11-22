class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :cover_url
      t.references :grid, null: false, foreign_key: true
      t.integer :position
      t.integer :current_page
      t.integer :total_pages
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :rating

      t.timestamps
    end
  end
end
