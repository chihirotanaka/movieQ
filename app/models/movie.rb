class Movie < ApplicationRecord

	belongs_to :quiz
	enum theme_title:{
  	  全米映画TOP5:0,
  	  日本映画TOP5:1,
  	  ジブリ映画TOP5:2,
    }
end
