class Course < ApplicationRecord
	belongs_to :account
	has_many :enrolls, :dependent => :delete_all

	validates :title, :description, :content, :duration, :price, presence: true
end



