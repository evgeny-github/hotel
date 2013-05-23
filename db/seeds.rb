# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Running data seed"

require 'open-uri'

=begin
#~ rails generate model operating_system name:string
#~ bundle exec rake db:migrate
generate model country name:string code:string
bundle exec rake db:migrate
["Windows", "Linux", "Mac OS X"].each do |os|
  OperatingSystem.find_or_create_by_name(os)
end
=end

#~ rails generate model country name:string code:string
#~ bundle exec rake db:migrate
Country.delete_all
open("http://openconcept.ca/sites/openconcept.ca/files/country_code_drupal_0.txt") do |countries|
  countries.read.each_line do |country|
    code, name = country.chomp.split("|")
    Country.create!(:name => name, :code => code)
  end
end
