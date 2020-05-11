class Movie < ApplicationRecord
  	attachment :image
  	belongs_to :quiz

  	enum theme_title: {
  	   ---:      	0,
  	   USATOP5:     1,
  	   JATOP5:     	2,
  	   GhibliTOP5: 	3,
  	   Topicwork5:  4,
    }
#0. --- 1.アメリカ映画TOP5 2.日本映画TOP5 3.ジブリ映画TOP5 4.今話題の5作品
end
