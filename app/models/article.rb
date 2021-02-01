class Article < ApplicationRecord
  belongs_to :course
  has_many :topics, through: :courses
end
