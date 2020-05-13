class Quiz < ApplicationRecord
	belongs_to :user
	belongs_to :movie
	has_one :theme, dependent: :destroy
end
