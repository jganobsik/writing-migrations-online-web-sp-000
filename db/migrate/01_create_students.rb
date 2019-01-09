class CreateStudents < ActiveRecord::Migration[5.1]
  
  ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
  id INTEGER PRIMARY KEY,
  name string
   )
SQL
 
ActiveRecord::Base.connection.execute(sql)
end
