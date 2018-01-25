class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.title :string
      t.alt :string

      t.timestamps
    end
  end
end
