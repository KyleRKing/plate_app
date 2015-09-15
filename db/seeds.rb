# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
 	{fname: "Kyle", lname: "King", email: "kylerking@me.com", password: "asdf", password_confirmation: "asdf"},
 	{fname: "Leslie", lname: "Pegue", email: "lpegue4@gmail.com", password: "fghi", password_confirmation: "fghi"}
	])

plates = Plate.create([
	{plate_number: "1XXYYY", plate_state: "CA", user_id: 1},
	{plate_number: "2XXYYY", plate_state: "CA", user_id: 2}
	])

comments = Comment.create ([
	{body: "1XXYYY, your brake lights don't work!", plate_id: 1, user_id: 1},
	{body: "2XXYYY, you park terribly!", plate_id: 2, user_id: 2}
	])