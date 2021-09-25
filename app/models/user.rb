class User < ApplicationRecord
  validates :email, uniqueness: true
                    length: { in: 5..50 }
                    format: { with: /\A[^@][\w.-]+@[\w.-]+[.][az]{2,4}\z/i }
  

  has_one :profile
  has_many :articles, -> { order 'published_at DESC, title ASC' }, 
            dependent: :destroy
  has_many :replies, through: :articles, source: :comments
end
