class User < ActiveRecord::Base
  include AverageRating

    validates :username, uniqueness: true,
                           length: { minimum: 3 }
    validates :password, length: {minimum: 4},
                         format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/,
                                   message: "Numerical character and an uppercase required"}
   
   has_many :ratings, dependent: :destroy

    has_secure_password
end
