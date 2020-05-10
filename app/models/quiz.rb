class Quiz < ApplicationRecord

	belongs_to: user
	belongs_to: movie
	has_many: favorites,dependent::destroy
	has_many: unfavorites,dependent::destroy
end
