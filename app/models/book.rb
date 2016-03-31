class Book < ActiveRecord::Base

  has_many :order_items
  belongs_to :author

  validates :title, :price, :photo_url, :author_id, presence: true

end
