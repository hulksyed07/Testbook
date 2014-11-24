class User < ActiveRecord::Base
  has_many :friendships,dependent: :destroy
end
