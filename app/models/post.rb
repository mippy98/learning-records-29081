class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many_attached :images

  with_options presence: true do
    validates :title
    validates :conclusion
    validates :content
    validates :images
    validates :category_id, numericality:{ other_than: 1, message: "を選択してください"}
    validates :study_time_id,numericality:{ other_than: 1, message: "を選択してください"}
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :study_time

  def self.search(search)
    if search != ""
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
