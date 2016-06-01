# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TABLE_NAMES = %w(company_names car_names car_types specs stocks)

# すべての仕様データをハッシュに格納
car_specs = {}
Dir.glob("#{Rails.root}/db/fixtures/*.csv").each do |path|
  data = csv_parse(path)
  key = File.basename(path, ".csv")
  car_specs[key] = data
end

# Setup Company Names
Dir.glob("#{Rails.root}/db/fixtures/*.csv").each do |path|
  company_name = File.basename("#{Rails.root}/db/fixtures/daihatsu.csv", '.csv')
  CompanyName.create(name: company_name)
end



# Setup Car Names

