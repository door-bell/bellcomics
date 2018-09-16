class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :alt

      t.timestamps
    end
  end

  add_index :comics, :created_at
end
