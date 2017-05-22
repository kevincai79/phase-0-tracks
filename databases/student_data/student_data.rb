# STUDENT DATA MANAGEMENT

# Install gems.

require 'sqlite3'
require 'faker'

# BUSINESS LOGIC

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# Create students table.

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT
    )
  SQL

db.execute(create_table)

# Add methods for displaying adding, updating, deleting students from the data.

def display_students(db)
  db.execute('SELECT * FROM students')
end

def add_student(db, first_name, last_name, age)
  db.execute('INSERT INTO students (first_name, last_name, age) VALUES (?, ?, ?)', [first_name, last_name, age])
end

def update_student(db, id, first_name, last_name, age)
  db.execute('UPDATE students SET first_name = ?, last_name = ?, age = ? WHERE id = ?', [first_name, last_name, age, id])
end

def remove_student(db, int)
  db.execute('DELETE FROM students WHERE id = ?', int)
end

# Retreive the students data and add a method to print the data.

students = display_students(db)

def print_students(students)
  students.each do |student|
    puts "#{student['id']}: #{student['first_name']} #{student['last_name']}, age: #{student['age']}"
  end
end

# print_students(students)

# Create original students SQLite database.
# age = [20, 21, 22, 23, 24, 25]
# 20.times do
#   add_student(db, Faker::Name.first_name, Faker::Name.last_name, age.sample)
# end
# db.execute('DELETE FROM students WHERE id >= 21 AND id <= 40')

# USER INTERFACE

# User interface to manipulate the database.

puts "What do you want to do with the students database ('display', 'add', 'update' or 'remove') ?"
user_request = gets.chomp.downcase

case user_request
  when 'display'
    print_students(students)
  when 'add'
    puts "Please add student's first name, last name and age by order."
    student_add = gets.chomp.split(' ')
    add_student(db, student_add[0], student_add[1], student_add[2])
  when 'update'
    puts "Please update student's number, first name, last name and age by order."
    student_update = gets.chomp.split(' ')
    update_student(db, student_update[0].to_i, student_update[1], student_update[2], student_update[3].to_i)
  when 'remove'
    puts "Please put the student number which you want to remove."
    student_remove = gets.chomp.to_i
    remove_student(db, student_remove)
  else
    puts "Sorry I don't understand your request."
end

