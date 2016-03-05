class Book < ActiveRecord::Base

  belongs_to :authors

  validates :title, :price, :photo_url, :author_id, presence: true

end
