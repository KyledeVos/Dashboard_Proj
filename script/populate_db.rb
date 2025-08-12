# run from project root as: 'bin/rails runner script/populate_db.rb'

# Load Rails environment
require File.expand_path('../../config/environment', __FILE__)

puts "\nPerforming Database population"

error_message_array = []

puts "\nCreating Grades Table"
begin
    Grade.create(grade_value: 8)
    Grade.create(grade_value: 9)
    Grade.create(grade_value: 10)
    Grade.create(grade_value: 11)
    Grade.create(grade_value: 12)
rescue => e
    error_message_array.push("\nError occured during population of Grades table as: #{e}\n")
end

puts "\nCreating Students Table"
begin
    Student.create(grade_id: 1, full_name: "Nancy Jinkings", absent_days: 2)
    Student.create(grade_id: 1, full_name: "Peter Donald", absent_days: 5)
    Student.create(grade_id: 1, full_name: "Collin Burg", absent_days: 1)
    Student.create(grade_id: 2, full_name: "Innocent Matenga", absent_days: 2)
    Student.create(grade_id: 2, full_name: "Alyn Bridge", absent_days: 3)
    Student.create(grade_id: 2, full_name: "Yasmin Nair", absent_days: 2)
    Student.create(grade_id: 3, full_name: "Matthew Peters", absent_days: 9)
    Student.create(grade_id: 3, full_name: "Brooke Meadow", absent_days: 0)
    Student.create(grade_id: 3, full_name: "Porsche Gridlenew", absent_days: 1)
    Student.create(grade_id: 4, full_name: "Nicko Gonzo", absent_days: 0)
    Student.create(grade_id: 4, full_name: "Lilian Castle", absent_days: 6)
    Student.create(grade_id: 4, full_name: "Brian Zubo", absent_days: 2)
    Student.create(grade_id: 5, full_name: "Beatrice Naidoo", absent_days: 5)
    Student.create(grade_id: 5, full_name: "Adrian Summers", absent_days: 1)
    Student.create(grade_id: 5, full_name: "Carl Russouw", absent_days: 3)

rescue => e
    error_message_array.push("\nError occured during population of Students table as: #{e}\n")
end


puts "\nCreating Subjects Table"
begin
    Subject.create(subject_name: "English", mandatory_pass: true)
    Subject.create(subject_name: "Afrikaans", mandatory_pass: true)
    Subject.create(subject_name: "Mathematics", mandatory_pass: true)
    Subject.create(subject_name: "Life Orientation", mandatory_pass: true)
    Subject.create(subject_name: "Geography", mandatory_pass: false)
    Subject.create(subject_name: "Physical Science", mandatory_pass: false)
    Subject.create(subject_name: "Biology", mandatory_pass: false)
rescue => e
   error_message_array.push("\nError occured during population of Subjects table as: #{e}\n")
end
 
puts "\nCreating Lectures Table"
begin
    # Grade 8
    Lecture.create(grade_id: 1, subject_id: 1, name: "Basic Grammar")
    Lecture.create(grade_id: 1, subject_id: 1, name: "Book Reading")
    Lecture.create(grade_id: 1, subject_id: 1, name: "Parts of Speech")
    Lecture.create(grade_id: 1, subject_id: 1, name: "Verbs and Adjectives")
    Lecture.create(grade_id: 1, subject_id: 2, name: "Werkwoorde")
    Lecture.create(grade_id: 1, subject_id: 2, name: "Naam Woorde")
    Lecture.create(grade_id: 1, subject_id: 2, name: "Boek Less")
    Lecture.create(grade_id: 1, subject_id: 2, name: "Intensiewe Forme")
    Lecture.create(grade_id: 1, subject_id: 3, name: "Algebra Basics")
    Lecture.create(grade_id: 1, subject_id: 3, name: "Algebra Basics II")
    Lecture.create(grade_id: 1, subject_id: 3, name: "Geometry I")
    Lecture.create(grade_id: 1, subject_id: 3, name: "Geometry II")
    Lecture.create(grade_id: 1, subject_id: 3, name: "Geometry III")
    Lecture.create(grade_id: 1, subject_id: 4, name: "Life Goals")
    Lecture.create(grade_id: 1, subject_id: 4, name: "Stregths and Weaknesses")
    Lecture.create(grade_id: 1, subject_id: 4, name: "Stretches before exercising")
    Lecture.create(grade_id: 1, subject_id: 4, name: "Seeking Help in the world")
    Lecture.create(grade_id: 1, subject_id: 4, name: "Be Positive")
    Lecture.create(grade_id: 1, subject_id: 5, name: "Mapwork Skills")
    Lecture.create(grade_id: 1, subject_id: 5, name: "Weather I - Cloud formations")
    Lecture.create(grade_id: 1, subject_id: 5, name: "Weather II - Tornados")
    Lecture.create(grade_id: 1, subject_id: 6, name: "Pure Substances")
    Lecture.create(grade_id: 1, subject_id: 6, name: "Mixtures I")
    Lecture.create(grade_id: 1, subject_id: 6, name: "Mixtures I")
    Lecture.create(grade_id: 1, subject_id: 6, name: "The Periodic Table")
    Lecture.create(grade_id: 1, subject_id: 7, name: "Mammals")
    Lecture.create(grade_id: 1, subject_id: 7, name: "Fungi and Ferns")
    Lecture.create(grade_id: 1, subject_id: 7, name: "Muscles and how they work")
    Lecture.create(grade_id: 1, subject_id: 7, name: "Plant cells")


    # Grade 9
    Lecture.create(grade_id: 2, subject_id: 1, name: "Figurative Speech")
    Lecture.create(grade_id: 2, subject_id: 1, name: "Poetry I")
    Lecture.create(grade_id: 2, subject_id: 1, name: "Poetry II")
    Lecture.create(grade_id: 2, subject_id: 1, name: "Conjunction Types")
    Lecture.create(grade_id: 2, subject_id: 2, name: "Afrikaanse Poësie: Studie van Verse")
    Lecture.create(grade_id: 2, subject_id: 2, name: "Grammatika: Sinstruktuur")
    Lecture.create(grade_id: 2, subject_id: 2, name: "Vokabularium en Idiome")
    Lecture.create(grade_id: 2, subject_id: 2, name: " Geselskap en Uitspraak")
    Lecture.create(grade_id: 2, subject_id: 3, name: "Algebra I")
    Lecture.create(grade_id: 2, subject_id: 3, name: "Algebra II")
    Lecture.create(grade_id: 2, subject_id: 3, name: "Number Patterns - Linear I")
    Lecture.create(grade_id: 2, subject_id: 3, name: "Number Patterns - Linear II")
    Lecture.create(grade_id: 2, subject_id: 3, name: "Analytical Geometry I")
    Lecture.create(grade_id: 2, subject_id: 3, name: "Analytical Geometry II")
    Lecture.create(grade_id: 2, subject_id: 4, name: "Setting Schedules")
    Lecture.create(grade_id: 2, subject_id: 4, name: "Preparing for exams")
    Lecture.create(grade_id: 2, subject_id: 4, name: "Importance of a healthy diet")
    Lecture.create(grade_id: 2, subject_id: 4, name: "How to balance school and familys")
    Lecture.create(grade_id: 2, subject_id: 5, name: "Volcanoes I")
    Lecture.create(grade_id: 2, subject_id: 5, name: "Volcanoes II")
    Lecture.create(grade_id: 2, subject_id: 5, name: "Volcanoes III")
    Lecture.create(grade_id: 2, subject_id: 6, name: "Electrons, Protons and Nuetrons")
    Lecture.create(grade_id: 2, subject_id: 6, name: "The Atom")
    Lecture.create(grade_id: 2, subject_id: 6, name: "Electrostatics I")
    Lecture.create(grade_id: 2, subject_id: 6, name: "Electrostatics II")
    Lecture.create(grade_id: 2, subject_id: 7, name: "Animal and Plant Cells")
    Lecture.create(grade_id: 2, subject_id: 7, name: "Animal Classifications")
    Lecture.create(grade_id: 2, subject_id: 7, name: "Bones")
    Lecture.create(grade_id: 2, subject_id: 7, name: "Analysis of a leaf")

    # Grade 10
    Lecture.create(grade_id: 3, subject_id: 1, name: "Passive Voice")
    Lecture.create(grade_id: 3, subject_id: 1, name: "Intensive Forms")
    Lecture.create(grade_id: 3, subject_id: 1, name: "Book Reading")
    Lecture.create(grade_id: 3, subject_id: 1, name: "Summaries")
    Lecture.create(grade_id: 3, subject_id: 1, name: "Dictionary Skills")
    Lecture.create(grade_id: 3, subject_id: 2, name: "Afrikaanse Poësie: Studie van Verse")
    Lecture.create(grade_id: 3, subject_id: 2, name: "Drama: Play-Analise")
    Lecture.create(grade_id: 3, subject_id: 2, name: "Skryfvaardigheid: Opstelle en Opdrachten")
    Lecture.create(grade_id: 3, subject_id: 2, name: "Taal en Identiteit")
    Lecture.create(grade_id: 3, subject_id: 3, name: "Number Patterns - Numerical")
    Lecture.create(grade_id: 3, subject_id: 3, name: "Number Patterns - Geometric I")
    Lecture.create(grade_id: 3, subject_id: 3, name: "Number Patterns - Geometric II")
    Lecture.create(grade_id: 3, subject_id: 3, name: "Trigonometry I")
    Lecture.create(grade_id: 3, subject_id: 3, name: "Trigonometry II")
    Lecture.create(grade_id: 3, subject_id: 4, name: "Sign Language basics")
    Lecture.create(grade_id: 3, subject_id: 4, name: "Body Mass Index")
    Lecture.create(grade_id: 3, subject_id: 4, name: "Creating a CV")
    Lecture.create(grade_id: 3, subject_id: 5, name: "Rivers Formation")
    Lecture.create(grade_id: 3, subject_id: 5, name: "Map Skills and Scale")
    Lecture.create(grade_id: 3, subject_id: 5, name: "Mountains and Rivers")
    Lecture.create(grade_id: 3, subject_id: 5, name: "Lakes")
    Lecture.create(grade_id: 3, subject_id: 6, name: "Chemical Compounds I")
    Lecture.create(grade_id: 3, subject_id: 6, name: "Chemical Compounds II")
    Lecture.create(grade_id: 3, subject_id: 6, name: "Safety in the lab")
    Lecture.create(grade_id: 3, subject_id: 6, name: "Forces")
    Lecture.create(grade_id: 3, subject_id: 7, name: "The Human Skeleton")
    Lecture.create(grade_id: 3, subject_id: 7, name: "Plant Species")
    Lecture.create(grade_id: 3, subject_id: 7, name: "Growth of plants")
    Lecture.create(grade_id: 3, subject_id: 7, name: "Extinction vs Endangered")

    # Grade 11
    Lecture.create(grade_id: 4, subject_id: 1, name: "Direct and Indirect Speech")
    Lecture.create(grade_id: 4, subject_id: 1, name: "Poetry I")
    Lecture.create(grade_id: 4, subject_id: 1, name: "English skills in the office")
    Lecture.create(grade_id: 4, subject_id: 1, name: "Poetry II")
    Lecture.create(grade_id: 4, subject_id: 1, name: "Parts of Speech Review")
    Lecture.create(grade_id: 4, subject_id: 2, name: "Struktuur en Temas")
    Lecture.create(grade_id: 4, subject_id: 2, name: "Taalstrukture en Funksies")
    Lecture.create(grade_id: 4, subject_id: 2, name: "Taal en Identiteit")
    Lecture.create(grade_id: 4, subject_id: 2, name: "Sinonieme en Antonieme")
    Lecture.create(grade_id: 4, subject_id: 3, name: "Algebra Revision I")
    Lecture.create(grade_id: 4, subject_id: 3, name: "Algebra Revision II")
    Lecture.create(grade_id: 4, subject_id: 3, name: "Probability I")
    Lecture.create(grade_id: 4, subject_id: 3, name: "Probability II")
    Lecture.create(grade_id: 4, subject_id: 3, name: "Trigonometry I")
    Lecture.create(grade_id: 4, subject_id: 4, name: "Staying Healthy")
    Lecture.create(grade_id: 4, subject_id: 4, name: "Dealing with Loss and Trauma")
    Lecture.create(grade_id: 4, subject_id: 4, name: "Creating a Budget")
    Lecture.create(grade_id: 4, subject_id: 4, name: "Become more supportive")
    Lecture.create(grade_id: 4, subject_id: 5, name: "Formation of Mountains")
    Lecture.create(grade_id: 4, subject_id: 5, name: "Formation of Cliffs and Valleys")
    Lecture.create(grade_id: 4, subject_id: 5, name: "Weather Revision")
    Lecture.create(grade_id: 4, subject_id: 5, name: "Mapwork and Atlas Skills")
    Lecture.create(grade_id: 4, subject_id: 6, name: "The Atom")
    Lecture.create(grade_id: 4, subject_id: 6, name: "Electric Circuits")
    Lecture.create(grade_id: 4, subject_id: 6, name: "Fluid Dynamics I")
    Lecture.create(grade_id: 4, subject_id: 7, name: "Extinction Cycles")
    Lecture.create(grade_id: 4, subject_id: 7, name: "The Brain")
    Lecture.create(grade_id: 4, subject_id: 7, name: "The Ear")

    # Grade 12
    Lecture.create(grade_id: 5, subject_id: 1, name: "Tenses")
    Lecture.create(grade_id: 5, subject_id: 1, name: "Poetry I")
    Lecture.create(grade_id: 5, subject_id: 1, name: "Book Reading")
    Lecture.create(grade_id: 5, subject_id: 1, name: "Articles, Adjectives, Noun Forms")
    Lecture.create(grade_id: 5, subject_id: 1, name: "Sentence Construction")
    Lecture.create(grade_id: 5, subject_id: 2, name: "Storievertelling: Tegnieke en Metodes")
    Lecture.create(grade_id: 5, subject_id: 2, name: "Opvoeding: Taal en Kultuur")
    Lecture.create(grade_id: 5, subject_id: 2, name: "Non-verbale Kommunikasie")
    Lecture.create(grade_id: 5, subject_id: 2, name: "Woordebou en Betekenis")
    Lecture.create(grade_id: 5, subject_id: 3, name: "Algebra Revision")
    Lecture.create(grade_id: 5, subject_id: 3, name: "Number Patters - Geometric")
    Lecture.create(grade_id: 5, subject_id: 3, name: "Sequencs and Series I")
    Lecture.create(grade_id: 5, subject_id: 3, name: "Sequencs and Series II")
    Lecture.create(grade_id: 5, subject_id: 3, name: "Sigma Notation")
    Lecture.create(grade_id: 5, subject_id: 4, name: "Building Relationships")
    Lecture.create(grade_id: 5, subject_id: 4, name: "Religion and Cultures around the world")
    Lecture.create(grade_id: 5, subject_id: 4, name: "Prepating for an interview")
    Lecture.create(grade_id: 5, subject_id: 5, name: "Rock Types")
    Lecture.create(grade_id: 5, subject_id: 5, name: "Rock Layers")
    Lecture.create(grade_id: 5, subject_id: 5, name: "Volcanoes and Rock Formations")
    Lecture.create(grade_id: 5, subject_id: 6, name: "Famous Scientists")
    Lecture.create(grade_id: 5, subject_id: 6, name: "Electric Circuits I")
    Lecture.create(grade_id: 5, subject_id: 6, name: "States of Matter")
    Lecture.create(grade_id: 5, subject_id: 7, name: "Growing plants at home")
    Lecture.create(grade_id: 5, subject_id: 7, name: "Parts of the cell")
    Lecture.create(grade_id: 5, subject_id: 7, name: "DNA")

rescue => e
    error_message_array.push("\nError occured during population of Lectures table as: #{e}\n")
end

puts "\nCreating Percentages Table"
begin
    Percentage.create(student_id: 1, subject_id: 1, percentage_value: 62)
    Percentage.create(student_id: 1, subject_id: 2, percentage_value: 70)
    Percentage.create(student_id: 1, subject_id: 3, percentage_value: 58)
    Percentage.create(student_id: 1, subject_id: 4, percentage_value: 75)
    Percentage.create(student_id: 1, subject_id: 5, percentage_value: 76)
    Percentage.create(student_id: 1, subject_id: 6, percentage_value: 80)
    Percentage.create(student_id: 1, subject_id: 7, percentage_value: 64)

    Percentage.create(student_id: 2, subject_id: 1, percentage_value: 80)
    Percentage.create(student_id: 2, subject_id: 2, percentage_value: 85)
    Percentage.create(student_id: 2, subject_id: 3, percentage_value: 83)
    Percentage.create(student_id: 2, subject_id: 4, percentage_value: 79)
    Percentage.create(student_id: 2, subject_id: 5, percentage_value: 88)
    Percentage.create(student_id: 2, subject_id: 6, percentage_value: 84)
    Percentage.create(student_id: 2, subject_id: 7, percentage_value: 82)

    Percentage.create(student_id: 3, subject_id: 1, percentage_value: 48)
    Percentage.create(student_id: 3, subject_id: 2, percentage_value: 56)
    Percentage.create(student_id: 3, subject_id: 3, percentage_value: 45)
    Percentage.create(student_id: 3, subject_id: 4, percentage_value: 64)
    Percentage.create(student_id: 3, subject_id: 5, percentage_value: 35)
    Percentage.create(student_id: 3, subject_id: 6, percentage_value: 46)
    Percentage.create(student_id: 3, subject_id: 7, percentage_value: 52)

    Percentage.create(student_id: 4, subject_id: 1, percentage_value: 89)
    Percentage.create(student_id: 4, subject_id: 2, percentage_value: 67)
    Percentage.create(student_id: 4, subject_id: 3, percentage_value: 82)
    Percentage.create(student_id: 4, subject_id: 4, percentage_value: 92)
    Percentage.create(student_id: 4, subject_id: 5, percentage_value: 77)
    Percentage.create(student_id: 4, subject_id: 6, percentage_value: 83)
    Percentage.create(student_id: 4, subject_id: 7, percentage_value: 68)

    Percentage.create(student_id: 5, subject_id: 1, percentage_value: 51)
    Percentage.create(student_id: 5, subject_id: 2, percentage_value: 60)
    Percentage.create(student_id: 5, subject_id: 3, percentage_value: 49)
    Percentage.create(student_id: 5, subject_id: 4, percentage_value: 86)
    Percentage.create(student_id: 5, subject_id: 5, percentage_value: 45)
    Percentage.create(student_id: 5, subject_id: 6, percentage_value: 52)
    Percentage.create(student_id: 5, subject_id: 7, percentage_value: 50)

    Percentage.create(student_id: 6, subject_id: 1, percentage_value: 74)
    Percentage.create(student_id: 6, subject_id: 2, percentage_value: 69)
    Percentage.create(student_id: 6, subject_id: 3, percentage_value: 75)
    Percentage.create(student_id: 6, subject_id: 4, percentage_value: 74)
    Percentage.create(student_id: 6, subject_id: 5, percentage_value: 63)
    Percentage.create(student_id: 6, subject_id: 6, percentage_value: 80)
    Percentage.create(student_id: 6, subject_id: 7, percentage_value: 62)

    Percentage.create(student_id: 7, subject_id: 1, percentage_value: 83)
    Percentage.create(student_id: 7, subject_id: 2, percentage_value: 82)
    Percentage.create(student_id: 7, subject_id: 3, percentage_value: 90)
    Percentage.create(student_id: 7, subject_id: 4, percentage_value: 94)
    Percentage.create(student_id: 7, subject_id: 5, percentage_value: 86)
    Percentage.create(student_id: 7, subject_id: 6, percentage_value: 80)
    Percentage.create(student_id: 7, subject_id: 7, percentage_value: 82)

    Percentage.create(student_id: 8, subject_id: 1, percentage_value: 46)
    Percentage.create(student_id: 8, subject_id: 2, percentage_value: 52)
    Percentage.create(student_id: 8, subject_id: 3, percentage_value: 60)
    Percentage.create(student_id: 8, subject_id: 4, percentage_value: 68)
    Percentage.create(student_id: 8, subject_id: 5, percentage_value: 70)
    Percentage.create(student_id: 8, subject_id: 6, percentage_value: 70)
    Percentage.create(student_id: 8, subject_id: 7, percentage_value: 75)

    Percentage.create(student_id: 9, subject_id: 1, percentage_value: 75)
    Percentage.create(student_id: 9, subject_id: 2, percentage_value: 74)
    Percentage.create(student_id: 9, subject_id: 3, percentage_value: 76)
    Percentage.create(student_id: 9, subject_id: 4, percentage_value: 79)
    Percentage.create(student_id: 9, subject_id: 5, percentage_value: 65)
    Percentage.create(student_id: 9, subject_id: 6, percentage_value: 86)
    Percentage.create(student_id: 9, subject_id: 7, percentage_value: 88)

    Percentage.create(student_id: 10, subject_id: 1, percentage_value: 45)
    Percentage.create(student_id: 10, subject_id: 2, percentage_value: 33)
    Percentage.create(student_id: 10, subject_id: 3, percentage_value: 49)
    Percentage.create(student_id: 10, subject_id: 4, percentage_value: 75)
    Percentage.create(student_id: 10, subject_id: 5, percentage_value: 49)
    Percentage.create(student_id: 10, subject_id: 6, percentage_value: 32)
    Percentage.create(student_id: 10, subject_id: 7, percentage_value: 56)

    Percentage.create(student_id: 11, subject_id: 1, percentage_value: 62)
    Percentage.create(student_id: 11, subject_id: 2, percentage_value: 58)
    Percentage.create(student_id: 11, subject_id: 3, percentage_value: 61)
    Percentage.create(student_id: 11, subject_id: 4, percentage_value: 66)
    Percentage.create(student_id: 11, subject_id: 5, percentage_value: 65)
    Percentage.create(student_id: 11, subject_id: 6, percentage_value: 63)
    Percentage.create(student_id: 11, subject_id: 7, percentage_value: 51)

    Percentage.create(student_id: 12, subject_id: 1, percentage_value: 79)
    Percentage.create(student_id: 12, subject_id: 2, percentage_value: 81)
    Percentage.create(student_id: 12, subject_id: 3, percentage_value: 81)
    Percentage.create(student_id: 12, subject_id: 4, percentage_value: 90)
    Percentage.create(student_id: 12, subject_id: 5, percentage_value: 75)
    Percentage.create(student_id: 12, subject_id: 6, percentage_value: 74)
    Percentage.create(student_id: 12, subject_id: 7, percentage_value: 76)

    Percentage.create(student_id: 13, subject_id: 1, percentage_value: 66)
    Percentage.create(student_id: 13, subject_id: 2, percentage_value: 63)
    Percentage.create(student_id: 13, subject_id: 3, percentage_value: 70)
    Percentage.create(student_id: 13, subject_id: 4, percentage_value: 72)
    Percentage.create(student_id: 13, subject_id: 5, percentage_value: 45)
    Percentage.create(student_id: 13, subject_id: 6, percentage_value: 56)
    Percentage.create(student_id: 13, subject_id: 7, percentage_value: 56)

    Percentage.create(student_id: 14, subject_id: 1, percentage_value: 70)
    Percentage.create(student_id: 14, subject_id: 2, percentage_value: 78)
    Percentage.create(student_id: 14, subject_id: 3, percentage_value: 80)
    Percentage.create(student_id: 14, subject_id: 4, percentage_value: 86)
    Percentage.create(student_id: 14, subject_id: 5, percentage_value: 84)
    Percentage.create(student_id: 14, subject_id: 6, percentage_value: 83)
    Percentage.create(student_id: 14, subject_id: 7, percentage_value: 80)

    Percentage.create(student_id: 15, subject_id: 1, percentage_value: 86)
    Percentage.create(student_id: 15, subject_id: 2, percentage_value: 87)
    Percentage.create(student_id: 15, subject_id: 3, percentage_value: 88)
    Percentage.create(student_id: 15, subject_id: 4, percentage_value: 79)
    Percentage.create(student_id: 15, subject_id: 5, percentage_value: 74)
    Percentage.create(student_id: 15, subject_id: 6, percentage_value: 83)
    Percentage.create(student_id: 15, subject_id: 7, percentage_value: 82)
    
rescue => e
   error_message_array.push("\nError occured during population of Percentages table as: #{e}\n")  
end

puts "\nCreating Activity Table"
begin
    Activity.create(name: "Rugby")
    Activity.create(name: "Soccer")
    Activity.create(name: "Dance")
    Activity.create(name: "Hockey")
    Activity.create(name: "Athletics")
    Activity.create(name: "Debating")
    Activity.create(name: "Netball")
    Activity.create(name: "Tennis")

rescue => e 
    error_message_array.push("\nError occured during population of Activity table as: #{e}\n")  
end

puts "\nCreating Involvements Table"
begin
    Involvement.create(student_id: 1, activity_id: 1)
    Involvement.create(student_id: 1, activity_id: 2)
    Involvement.create(student_id: 2, activity_id: 3)
    Involvement.create(student_id: 3, activity_id: 2)
    Involvement.create(student_id: 3, activity_id: 4)
    Involvement.create(student_id: 3, activity_id: 8)
    Involvement.create(student_id: 4, activity_id: 4)
    Involvement.create(student_id: 4, activity_id: 3)
    Involvement.create(student_id: 4, activity_id: 8)
    Involvement.create(student_id: 4, activity_id: 6)
    Involvement.create(student_id: 6, activity_id: 2)
    Involvement.create(student_id: 8, activity_id: 1)
    Involvement.create(student_id: 9, activity_id: 4)
    Involvement.create(student_id: 9, activity_id: 6)
    Involvement.create(student_id: 9, activity_id: 7)
    Involvement.create(student_id: 9, activity_id: 3)
    Involvement.create(student_id: 11, activity_id: 3)
    Involvement.create(student_id: 13, activity_id: 2)
    Involvement.create(student_id: 13, activity_id: 8)
    Involvement.create(student_id: 14, activity_id: 1)
    Involvement.create(student_id: 14, activity_id: 5)
    Involvement.create(student_id: 14, activity_id: 8)
    Involvement.create(student_id: 15, activity_id: 8)
    
rescue => e
   error_message_array.push("\nError occured during population of Involvements table as: #{e}\n")  
end


if error_message_array.length > 0
    # Print Error Message(s) and ask user to clear their DB to avoid partially written data / tables
    error_message_array.each do |message|
        puts "\n=========================="
        puts "#{message}"
        puts "\n=========================="
    end
    #
    puts "\nPlease open a 'rails' console and run 'rails db:reset' to properly clear the database"
end