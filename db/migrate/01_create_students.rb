class CreateStudents < ActiveRecord::Migration[5.1]
  
  ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
)

 create_table :students do |t|
      t.string :name
        end
 

end


