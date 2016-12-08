class User < ApplicationRecord
	validates :name, length: { maximum: 50}
	validates :email, uniqueness: true
end
