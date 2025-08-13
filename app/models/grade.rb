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
            return final_averages.empty? ? "No Data" : final_averages
        rescue => error
            Rails.logger.error("Error occured in Grade Model for get students by grade as: #{error}")
            return []
        end
    end

    
    def self.get_percentages_by_grade

        begin

            final_data = {}
            Grade.all.each do |current_grade|
                final_data[current_grade.grade_value] = {}
                hash_subject = ""

                current_grade.students.each do |current_student|    
                    current_student.subjects.each do |current_subject|
                        hash_subject = current_subject.subject_name
                        grade_percentage_sum = 0
                        total_count = 0
                        current_subject.percentages.each do |current_percentage|
                            if current_percentage.student_id === current_student.id
                                grade_percentage_sum += current_percentage.percentage_value
                                total_count += 1
                            end
                        end
                        begin
                            grade_average = grade_percentage_sum / total_count
                            final_data[current_grade.grade_value][hash_subject] = grade_average.round(2)
                        rescue => error
                            Rails.logger.error("Inner Error in Grade Model, get_percentages_by_grade as: #{error}")
                        end
                    end
                end
            end
            puts "BIG FINAL, #{final_data}"
            return final_data

        rescue => error
            Rails.logger.error("Error in Grade Model, get_percentages_by_grade as: #{error}")
            return "Error"
        end
    end
end

