class User < ApplicationRecord
    

    has_many :plates, dependent: :destroy
    has_many :foods, through: :plates
    has_many :reviews, through: :plates
    has_many :restaurants, through: :plates

    validates :username, {presence: true, uniqueness: true}
    validates :location, :favorite_food, presence:true
end