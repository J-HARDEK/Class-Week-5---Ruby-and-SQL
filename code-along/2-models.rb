# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

companies = Company.all.count
puts "There are #{companies} companies"
#OR

#Ford
new_company = Company.new
new_company["name"] = "Ford"
new_company["city"] = "Dearborn"
new_company["state"] = "MI"
new_company["url"] = "https://ford.com"
new_company.save
#Amazon
new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company["url"] = "https://amazon.com"
new_company.save
#SpaceX
new_company = Company.new
new_company["name"] = "GMC"
new_company["city"] = "Detroit"
new_company["state"] = "MI"
new_company["url"] = "https://spacex.com"
new_company.save

michigan_companies = Company.where({"state"=>"MI"})
puts michigan_companies.inspect

puts new_company.inspect
puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with Michigan company
puts "MI Companies: #{michigan_companies.count}"

# 4. query companies table to find single row for Apple
ford = Company.find_by({"name" => "Ford"})
puts ford.inspect

# 5. read a row's column value
puts ford["url"]

# 6. update a row's column value
gmc = Company.find_by({"name" => "GMC"})
puts gmc.inspect
gmc["url"]= "https://gmc.com"
gmc.save
puts gmc.inspect


# 7. delete a row
amazon = Company.find_by({"name" => "Amazon"})
amazon.destroy 
    #better than .delete because is better for security

puts "There are #{companies} companies"