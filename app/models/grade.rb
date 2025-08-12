class Grade < ApplicationRecord
    has_many :students
    has_many :lectures
end
