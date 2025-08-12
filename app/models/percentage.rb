class Percentage < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  # Calculate the Average Percentage for all students in the school
  # Sums percentages for all subjects, for all students and then divides by
  # number of rows
  # Success - Returns Percentage Value as a string
  # Failure - console logs and returns "Error"
  def self.get_school_average_percentage
    begin
      total_percentage_sum = 0
      begin
        total_percentage_sum = Percentage.sum(:percentage_value)
        if total_percentage_sum > 0
          total_percentage = total_percentage_sum / Percentage.count.to_f
          # === Success Return ===
          return "#{total_percentage.round(2)}%"      
        end
      rescue ZeroDivisionError => error
        Rails.logger.error("Zero Division Error in Percentage Model, school average calculation: #{error}")
        return "Error"
      rescue => error
        Rails.logger.error("Error in Percentage Model for school average percentage calculation as: #{error}")
        return "Error"
      end

    rescue => error 
      Rails.logger.error("Error in Percentage Model for school average percentage as: #{error}")
      return "Error"
    end
  end

end
