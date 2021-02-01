class Topic < ApplicationRecord
  has_many :courses
  has_many :articles, through: :courses
end
