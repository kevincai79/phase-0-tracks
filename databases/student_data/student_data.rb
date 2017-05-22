# STUDENT DATA MANAGEMENT

# Install gems.

require 'sqlite3'
require 'faker'

# BUSINESS LOGIC

db = SQLite3::Database.new("students.db")

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

# Add methods for adding, updating, deleting students from the data.

def add_student(db, first_name, last_name, age)
  db.execute('INSERT INTO students (first_name, last_name, age) VALUES (?, ?, ?)', [first_name, last_name, age])
end

def remove_student(db, int)
  db.execute('DELETE FROM students WHERE id = ?', int)
end

# Create original students SQLite database.

age = [20, 21, 22, 23, 24, 25]

20.times do
  add_student(db, Faker::Name.first_name, Faker::Name.last_name, age.sample)
end



# USER INTERFACE

# User interface to manipulate the database.