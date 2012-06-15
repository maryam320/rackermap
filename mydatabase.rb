require 'rubygems'
require 'mysql'
 

db=Mysql.new('localhost','root','passw0rd','internship')
@interns=db.query "Select * from Interns"
db.close



