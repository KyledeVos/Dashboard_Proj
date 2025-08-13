class Lecture < ApplicationRecord
  belongs_to :grade
  belongs_to :subject

  
  def self.get_lectures_count
    begin
      return Lecture.count
    rescue => error_string
      Rails.logger.error("Lecture Model Error during get all lectures count as: #{error_string}")
      return "Error"
    end
  end
end
