class Article < ApplicationRecord
  belongs_to :course
  has_many :topics, through: :courses
  validates :title, presence: true
end
