# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quotes = []
file = File.open("#{Rails.root}/db/quotes.txt")
file.each_line { |line|
	next if line.strip == ""
	line = line.split(" -")
	quotes << { 
		quote_text: line[0].strip,
		quote_author: line[1].strip
	}
}
file.close
Quote.create(quotes)
