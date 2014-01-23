class Beer < ActiveRecord::Base
	belongs_to :brewery
    has_many :ratings

    def average_rating
        avg = 0;
        ratings.each { |rating|
            avg += rating.score
        }
        return avg / ratings.length
    end
end
