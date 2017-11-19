class Event < ApplicationRecord
    belongs_to :creator, :class_name => "User"
    has_many :attendences
    has_many :users, through: :attendences
end
