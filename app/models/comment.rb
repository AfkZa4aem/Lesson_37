class Comment < ActiveRecord::Base
  belongs_to :article

  validates :body, length: { maximum: 400 }
end
