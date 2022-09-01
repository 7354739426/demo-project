class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.datetime :published_at
      t.string :author_name

      t.timestamps
    end
  end
end
