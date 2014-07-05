class AddAuthorAndLeadToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string
    add_column :articles, :lead, :text
  end
end
