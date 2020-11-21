class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :transportation
  belongs_to :budget

  with_options presence: true do
    validates :image
    validates :title, length:{ maximum: 25}
    validates :place, length:{ maximum: 30}
    validates :explain
  end
  with_options numericality:{ other_than: 0 } do
    validates :prefecture_id
    validates :budget_id
    validates :transportation_id
  end
end
