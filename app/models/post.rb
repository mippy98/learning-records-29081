class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :conclusion
    validates :content
    validates :study_time_id
    validates :category_id
  end
end
