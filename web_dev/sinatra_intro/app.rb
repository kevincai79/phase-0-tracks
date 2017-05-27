# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# 9.4 Release 0:

# Assignment 1
get '/contact' do
  "Godengate Park, San Francisco, CA94118"
end

# Assignment 2
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# Assignment 3
get '/add/:number_1/:number_2' do
  result = params[:number_1].to_i + params[:number_2].to_i
  result.to_s
end

# Assignment 4
# Search students in the same campus.
get '/campus/:campus' do
  campuses = ['SD', 'SF', 'NYC', 'CHI', 'SEA']
  campus = params[:campus]
#  if campuses.index(campus) != nil
  if campuses.include?(campus)
    result = db.execute("SELECT * FROM students WHERE campus = ?", [campus])
    result.to_s
  else
    "Not campus in #{campus}"
  end
end

# Release 1

# Is Sinatra the only web app library in Ruby? What are some others?

# There are others: Ruby on Rails, Volt, Grape etc.

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

# There are another options: Datamapper, ActiveRecord, MySQL, Postgres ect.

# What is meant by the term web stack?

# A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server.
# LAMP is one commonly used Web stack. It uses Linux as the operating system, Apache as the Web server, MySQL as the relational database management system and PHP as the object-oriented scripting language.
