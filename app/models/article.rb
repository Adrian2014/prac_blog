class Article < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	validates :text, presence: true, length: { minimum: 12 }
	belongs_to :user

	has_many :comments, dependent: :destroy
end
