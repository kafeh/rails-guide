class ArticleCategory < ApplicationRecord
	has_many :articles
	self.per_page = 10
end
