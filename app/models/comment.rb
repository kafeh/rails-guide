class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  self.per_page = 5
end
