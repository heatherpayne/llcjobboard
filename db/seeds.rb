# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admins = Admin.create([ {:email=>"heather@hackeryou.com",:password=>"helloworld",:password_confirmation=>"helloworld"},
                        {:email=>"h4xnoodle@gmail.com", :password=>"meow", :password_confirmation=>"meow"},
                        {:email=>"m.underell@gmail.com", :password=>"helloworld", :password_confirmation=>"helloworld"},
                        {:email=>"emilygutierrez86@gmail.com", :password=>"helloworld", :password_confirmation=>"helloworld"}])