class Article < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5 }
	belongs_to :user
	belongs_to :article_category
	has_many :comments, dependent: :destroy
	self.per_page = 5
end
