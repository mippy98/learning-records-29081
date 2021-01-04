class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :conclusion
    validates :content
    validates :study_time_id
    validates :category_id, numericality:{ other_than: 1, message: "を選択してください"}
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :study_time
end
