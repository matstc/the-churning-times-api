class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :path
      t.string :author
      t.string :title
      t.string :attribution_url
    end
  end
end
