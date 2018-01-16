class UpdateArticleCategoryOnArticle < ActiveRecord::Migration[5.1]
  def self.up    
   Article.all.each do |f|
      f.update_attribute :article_category, ArticleCategory.first
   end
	end
end
