class ArticleCategory < ApplicationRecord
	has_many :articles
	self.per_page = 5
end
