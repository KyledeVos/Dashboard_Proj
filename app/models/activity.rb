class Activity < ApplicationRecord
    has_many :involvements
    has_many :students, through: :involvements
end
