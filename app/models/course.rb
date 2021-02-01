class Course < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  has_many :articles
end
