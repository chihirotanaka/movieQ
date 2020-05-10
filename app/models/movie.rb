class Movie < ApplicationRecord
  attachment :image_id
  belongs_to :quiz

  enum theme_title:{
  	  	USATOP5:0,
  	  	JATOP5:1,
  	  	GhibliTOP5:2,
  	  	DisneyTOP5:3,
    	}
end
