class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.timestamps null: false
    end
  end
end
