class Book < ActiveRecord::Base

  belongs_to :authors
  has_many :order_items

  validates :title, :price, :photo_url, :author_id, presence: true

end
