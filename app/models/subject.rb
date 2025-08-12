class Subject < ApplicationRecord
    has_many :lectures
    has_many :percentages
    has_many :students, through: :percentages
end
