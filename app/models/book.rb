class Book < ActiveRecord::Base

  belongs_to :authors

  validates :title, :price, :photo_url, presence: true

end
