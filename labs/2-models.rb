# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
#puts new_salesperson.inspect <-- to see what is expected in the table
new_salesperson ["first_name"] = "Ben"
new_salesperson ["last_name"] = "Block"
new_salesperson ["email"] = "BBlock@gmail.com"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "Brian"
new_salesperson ["last_name"] = "Eng"
new_salesperson ["email"] = "BEng@gmail.com"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "John"
new_salesperson ["last_name"] = "H"
new_salesperson ["email"] = "JH@gmail.com"
new_salesperson.save


# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count} Sales People"
# ---------------------------------
# Salespeople: 3

# 4. modify/update column data for a row in the salespeople table.
ben = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
puts ben.inspect
ben["email"] = "bjblock@gmail.com"
ben.save
ben.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name
puts new_salesperson["first_name"]

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
