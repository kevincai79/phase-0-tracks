# STUDENT DATA MANAGEMENT

# Install gems.

require 'sqlite3'
require 'faker'

# BUSINESS LOGIC

db = SQLite3::Database.new("students.db")

# Add methods for updating, deleting and add students.

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT
    )
  SQL

db.execute(create_table)

# Create SQLite database.

# USER INTERFACE

# User interface to manipulate the database.