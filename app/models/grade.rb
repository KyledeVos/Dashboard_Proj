class Grade < ApplicationRecord
    has_many :students
    has_many :lectures

    # Determine the Average Percentage per grade
    # Returns hash of grades and percentage for that grade
    def self.get_students_by_grade
        # this will hold as {8 => 80}
        final_averages = {}
        begin
            # loop through all grades
            Grade.all.each do |current_grade|
                # reset percentage sum and count each loop
                percentage_sum = 0
                student_count = 0
                # each student within a grade
                current_grade.students.each do |current_student|
                    current_student.percentages.each do |current_percentage|
                        percentage_sum += current_percentage.percentage_value
                        student_count += 1
                    end
                end
                if percentage_sum > 0
                    begin
                        final_averages[current_grade.grade_value] = (percentage_sum / student_count).round(2)
                    rescue ZeroDivisionError => error
                        Rails.logger.error("Error in Grade Model, get_students_by_grade, zero division error for grade: #{current_grade} as #{error}")
                        final_averages[current_grade.grade_value] = 0
                    rescue => error
                        Rails.logger.error("Error in Grade Model, get_students_by_grade, error for grade: #{current_grade} as #{error}")
                        final_averages[current_grade.grade_value] = 0
                    end
                else
                    final_averages[current_grade.grade_value] = 0
                end              
            end
            Rails.logger.info("FINAL DATA, #{final_averages}")
            return final_averages
        rescue => error
            Rails.logger.error("Error occured in Grade Model for get students by grade as: #{error}")
            return []
        end
    end
end

