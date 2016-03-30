class User < ActiveRecord::Base


  has_many :orders
  validates :email, :name, :password, presence: true

end
