class Article < ApplicationRecord
  belongs_to :course
  has_many :topics, through: :courses
  validates :title, presence: true
  scope :long_articles, -> { where("LENGTH(title) > 15") }

  def load_from_wikipedia
    return if title.blank?
    wiki = Wikipedia.find(title)
    self.title = wiki.title
    self.iframe_link = wiki.fullurl
  end
end
