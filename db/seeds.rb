require 'ffaker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do
  employer = Employer.create!(name: FFaker::Company.name, description: FFaker::Company.bs, email: FFaker::Internet.email)
  job = employer.jobs.create!(title: FFaker::Job.title, description: FFaker::Company.bs)

  recruiter = job.recruiters.create!(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)

end
