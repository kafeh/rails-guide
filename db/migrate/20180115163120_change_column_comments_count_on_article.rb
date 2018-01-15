class ChangeColumnCommentsCountOnArticle < ActiveRecord::Migration[5.1]
 def up
 	add_column :articles, :comments_counter, :integer, default: 0
 end

 def down
 	remove_column :articles, :comments_counter, :integer
 end
end
