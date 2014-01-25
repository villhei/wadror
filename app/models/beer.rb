class Beer < ActiveRecord::Base
	belongs_to :brewery
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :users

  include AverageRating

  validates :name, presence: true
    def to_s
        "#{name} (#{brewery.name})"
    end
end
