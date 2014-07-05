class AddPictureToArticle < ActiveRecord::Migration
  def change
    add_reference :articles, :picture, index: true
  end
end
