class Comment < ApplicationRecord
  belongs_to :article, counter_cache: true
  belongs_to :user
  self.per_page = 3
end
