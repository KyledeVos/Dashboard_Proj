# Generate Tables and Models - Rough Data Thoughts
Students:
id, grade_id, full_name, absent_days, 

Grades:
id, grade_value
8, 9, 10, 11, 12

Lectures:
id, subject_id, name
1, 1, "Essay Writing"

Subjects:
id, subject_name, mandatory_pass
English, Mathematics, Afrikaans, Geography, History, Biology, Physical Science, Business Studies, Accounting

Percentages:
id, student_id, subject_id, percentage_value

Activities:
id, name, student_id

# Relationships Evaluation:

Tables List: Students, Grades, Lectures, Subjects, Percentages, Activities

1) Student to Grade 
- many students belong to one grade
- each grade has many students
- <b>Relationship (many to one) - many students to one grade</b>
- Grade Table: has_many students
- Student Table: belongs_to Grade

2) Lecture to Grade
- many lectures belong to one grade
- each grade has many lectures
- <b>Relationship (many to one) - many lectures to one grade</b>
- Grade Table: has_many lectures
- Lecture Table: belongs_to grade

3) Lecture to Subject
- many lectures belong to one subject
- each subject has many lectures
- <b>Relationship (many to one) - many lectures to one subject</b>
- Subject Table: has_many lectures
- Lecture Table: belongs_to subjects

4) Student to Subject (Percentages)
- many students belong to many subjects (lookup table)
- Students and Subjects linked by percentage
- <b> Relationship: Many to Many</b>
- Student -> Percentage <- Subjects

5) Student to Activity
- many students can participate in many activities
- needs an Activity Table and a lookup table called involvement
- Many to many actually creates as:
- Many (Student) to One (involvement) and One (Involvement) to Many Activities (Many)
- Student table: has_many activities through involvement
- Activity Table: has many students though involvement
- Involvement, belongs to student and belongs to activity

# Migrations
bin/rails generate model Student grade:references full_name:string absent_days:integer
bin/rails generate model Grade grade_value:integer
bin/rails generate model Lecture grade:references subject:references name:string
bin/rails generate model Subject subject_name:string mandatory_pass:boolean
bin/rails generate model Percentage student:references subject:references percentage_value:float
bin/rails generate model Activity name:string 
bin/rails generate model Involvement student:references activity:references

# Controllers
bin/rails generate controller Dashboards index 
bin/rails generate controller Students index 
bin/rails generate controller Grades index
bin/rails generate controller Subjects index
bin/rails generate controller Lectures index
bin/rails generate controller Percentages index
bin/rails generate controller Activities index
bin/rails generate controller Involvements index









