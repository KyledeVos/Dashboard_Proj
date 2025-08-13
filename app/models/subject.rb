class Subject < ApplicationRecord
    has_many :lectures
    has_many :percentages
    has_many :students, through: :percentages

    def self.get_all_subjects_names

        begin
            subject_names =  Subject.pluck(:subject_name)
            if subject_names.length > 0
                return subject_names
            else
                Rails.logger.info("Subject model: get_all_subjects_names has no subjects.")
            end
        rescue => error
            Rails.logger.error("Error in Subject model: get_all_subjects_names as: #{error}")
            return "Error"
        end

    end

    def self.get_percentages_by_subject
        final_data = {}
        begin
            Subject.all.each do |current_subject|
                subject_percentage_sum = 0
                current_subject.percentages.each do |subject_percentage|
                    subject_percentage_sum += subject_percentage.percentage_value
                end
                begin
                    subject_avg = subject_percentage_sum / current_subject.percentages.count
                    if subject_avg >= 0
                        final_data[current_subject.subject_name] = subject_avg.round(2)
                    else
                        Rails.logger.error("Subject Model, get_percentages_by_subject had average less than 0. Subject; #{current_subject}, Average: #{subject_avg}")
                        return "Error"
                    end
                rescue ZeroDivisionError => zero_error
                    Rails.logger.error("Zero Div Error in Subject Model, get_percentages_by_subject as: #{zero_error}")
                    return "Error"
                rescue => error
                    Rails.logger.error("Calc Error in Subject Model, get_percentages_by_subject as: #{error}")
                    return "Error"
                end
            end
        rescue => error
            Rails.logger.error("Error in Subject Model, get_percentages_by_subject as: #{error}")
            return "Error"
        end
        puts "FINAL, #{final_data}"
        return final_data
    end
end


