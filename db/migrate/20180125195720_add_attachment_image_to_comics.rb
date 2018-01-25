class AddAttachmentImageToComics < ActiveRecord::Migration[5.0]
  def self.up
    change_table :comics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :comics, :image
  end
end
