class Brewery < ActiveRecord::Base
	has_many :beers, dependent: :destroy
    has_many :ratings, through: :beers
    include AverageRating

    def restart
        self.year = 2014
        puts "changed year to #{year}"
    end

    def print_report
        puts name
        puts "established at year #{year}"
        puts "number of beers #{beers.count}"
        puts "number of ratings #{ratings.count}"
    end
end
