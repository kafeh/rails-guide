class AddArticleCategoryIdToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :article_category_id, :integer
  end
end
