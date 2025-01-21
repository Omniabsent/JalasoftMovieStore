class Movie < ApplicationRecord
    validates :title, length: {minimum: 5, too_short: "title too short"}
    validates :description, length: {minimum: 20, too_short: "description too short"}
    validates :rating, inclusion: {in: 1..5, message: "rating should be between 1 and 5" }
end
