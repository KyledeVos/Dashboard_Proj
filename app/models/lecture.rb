class Lecture < ApplicationRecord
  belongs_to :grade
  belongs_to :subject

    def self.get_all_lectures_full_table
      begin
        final_data = []
        Lecture.all.each do |current_lecture|
          grade = current_lecture.grade
          subject = current_lecture.subject

          data = {
            grade: grade.grade_value,
            subject: subject.subject_name,
            name: current_lecture.name
          }
          final_data.push(data)
        end
        return final_data
        
      rescue => error_string
        Rails.logger.error("Lecture Model Error for get_all_lectures_full_table as: #{error_string}")
        return []
      end
  end

  
  def self.get_lectures_count
    begin
      return Lecture.count
    rescue => error_string
      Rails.logger.error("Lecture Model Error during get all lectures count as: #{error_string}")
      return "Error"
    end
  end
end
