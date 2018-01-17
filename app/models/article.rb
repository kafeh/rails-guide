class Article < ApplicationRecord
	extend FriendlyId
   friendly_id :slug_candidates, use: :slugged
   def slug_candidates
      [ SecureRandom.urlsafe_base64(8) ]
   end

   def should_generate_new_friendly_id?
    new_record? || self.slug.nil?
  end

	validates :title, presence: true, length: { minimum: 5 }
	belongs_to :user
	belongs_to :article_category, optional: true
	has_many :comments, dependent: :destroy
	self.per_page = 5

end
