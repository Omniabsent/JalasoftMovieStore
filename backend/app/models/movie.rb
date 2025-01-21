class Movie < ApplicationRecord
    validates :title, length: {minimum: 5, too_short: "title too short"}
    validates :description, length: {minimum: 20, too_short: "description too short"}
    validates :rating, inclusion: {in: 1..5, message: "rating should be between 1 and 5" }

    def self.search(params)
        if params[:search] || params[:rating] then
            if params[:search].nil? then
                where(["rating >= ?", "#{params[:rating]}"])
            elsif params[:rating].nil? then
                where(["title LIKE ? or description LIKE ?", "%#{params[:search].downcase}%", "%#{params[:search].downcase}%"])
            else
                where(["(title LIKE ? or description LIKE ?) and rating >= ?", "%#{params[:search].downcase}%", "%#{params[:search].downcase}%", "#{params[:rating]}"])
            end
        else
            Movie.all
        end
    end
end
