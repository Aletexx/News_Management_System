class News < ApplicationRecord
  belongs_to :category
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  # By default, a new news article will be visible (hidden: false)
  after_initialize :set_defaults, if: :new_record?

  private

  def set_defaults
    self.hidden ||= false
  end
end
