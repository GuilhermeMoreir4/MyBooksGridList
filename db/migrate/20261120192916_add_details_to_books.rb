class AddDetailsToBooks < ActiveRecord::Migration[8.0]
  def change
    add_reference :books, :grid, null: false, foreign_key: true
    add_column :books, :title, :string
    add_column :books, :author, :string
    add_column :books, :cover_url, :string
    add_column :books, :position, :integer
    add_column :books, :current_page, :integer
    add_column :books, :total_pages, :integer
    add_column :books, :started_at, :datetime
    add_column :books, :finished_at, :datetime
    add_column :books, :rating, :integer
  end
end
