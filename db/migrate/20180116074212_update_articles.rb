class UpdateArticles < ActiveRecord::Migration[5.1]
  def self.up    
   Article.all.each do |f|
      f.update_attribute :article_category_id, 1
   end
	end
end
