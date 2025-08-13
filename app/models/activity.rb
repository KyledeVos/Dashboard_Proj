class Activity < ApplicationRecord
    has_many :involvements
    has_many :students, through: :involvements

def self.get_activity_student_counts

    final_data = {}
    Activity.all.each do |current_activity|
        total_count = 0
        current_activity.students.each do |each|
            total_count += 1
        end

        final_data[current_activity.name] = total_count

    end
    puts "final, #{final_data}"
    return final_data

end
end
