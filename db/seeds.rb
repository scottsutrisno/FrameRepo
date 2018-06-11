# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Define Languages Here
Language.create(name: "Javascript")
Language.create(name: "Ruby")
Language.create(name: "PHP")
Language.create(name: "Python")

#Create Packages Here
Package.create(url: "http://www.github.com/rails", user_id: 1, name: "Rails", language_id: "2", developed_by: "Some guy", live: true, last_updated: "April 08, 2018", reviewed: true, fw_type: 'Full Stack')
Package.create(url: "http://www.github.com/rails", user_id: 1, name: "JQuery", language_id: "1", developed_by: "Some guy", live: true, last_updated: "December 08, 2007", reviewed: true, fw_type: 'Front End')
Package.create(url: "http://www.github.com/rails", user_id: 1, name: "MongoDB", language_id: "3", developed_by: "Some guy", live: true, last_updated: "March 08, 1998", reviewed: true, fw_type: 'Back End')
Package.create(url: "http://www.github.com/rails", user_id: 1, name: "Sinatra", language_id: "2", developed_by: "Some guy", live: true, last_updated: "April 08, 2018", reviewed: true, fw_type: 'Full Stack')

#Follow this template to create a User
user = User.new
user.email = 'mike@mike.com'
user.password = 'mikemike'
user.admin = true
user.username = 'maikimo'
user.first_name = 'mike'
user.last_name = 'momo'
user.age = 32
user.occupation = 'Student'
user.save!

user = User.new
user.email = 'chris@chris.com'
user.password = 'christoph'
user.admin = true
user.username = 'kristmas'
user.first_name = 'chris'
user.last_name = 'keddell'
user.age = 25
user.occupation = 'Professor'
user.save!

user = User.new
user.email = 'kev@kev.com'
user.password = 'kevkev'
user.admin = false
user.username = 'kevythekevster'
user.first_name = 'kevin'
user.last_name = 'kevster'
user.age = 26
user.occupation = 'Software Engineer'
user.save!

user = User.new
user.email = 'scott@scottie.com'
user.password = 'scottie'
user.admin = true
user.username = 'scottie'
user.first_name = 'scott'
user.last_name = 'sutrisno'
user.age = 23
user.occupation = 'Cool Styling Scott or CSS'
user.save!

user = User.new
user.email = 'omar@omar.com'
user.password = 'yogayolo'
user.admin = false
user.username = 'omaromaromar'
user.first_name = 'omar'
user.last_name = 'ahmed'
user.age = 32
user.occupation = 'Front End Engineer'
user.save!

user = User.new
user.email = 'minhal@halmin.com'
user.password = 'kingminhal'
user.admin = false
user.username = 'mingkinhal'
user.first_name = 'minhal'
user.last_name = 'gardezi'
user.age = 24
user.occupation = 'Back End Engineer'
user.save!

user = User.new
user.email = 'orlando@orlando.com'
user.password = 'orlandolandoorlando'
user.admin = false
user.username = 'TheO'
user.first_name = 'orlando'
user.last_name = 'caraballo'
user.age = 34
user.occupation = 'God of Code'
user.save!

user = User.new
user.email = 'lauren@lauren.com'
user.password = 'laulaurlauren'
user.admin = false
user.username = 'lauroftheroar'
user.first_name = 'lauren'
user.last_name = 'tracy'
user.age = 30
user.occupation = 'Java Engineer'
user.save!

user = User.new
user.email = 'md@doctor.com'
user.password = 'doctahdoctahgimmethenews'
user.admin = false
user.username = 'mdiesel'
user.first_name = 'md'
user.last_name = 'chowdhury'
user.age = 50
user.occupation = 'Engineer/Mechanical Engineer'
user.save!

user = User.new
user.email = 'cat@catcat.com'
user.password = 'getswole'
user.admin = false
user.username = 'cataclysm'
user.first_name = 'cat'
user.last_name = 'perry'
user.age = 35
user.occupation = 'Freelance Software Engineer'
user.save!

user = User.new
user.email = 'aaron@aaron.com'
user.password = 'maaaasih223211'
user.admin = false
user.username = 'masihmasta'
user.first_name = 'aaron'
user.last_name = 'masih'
user.age = 25
user.occupation = 'Best Engineer'
user.save!

user = User.new
user.email = 'dave@notedgecase.com'
user.password = 'reallynotedgecase'
user.admin = false
user.username = 'davenotinedgecase'
user.first_name = 'david'
user.last_name = 'patlut'
user.age = 25
user.occupation = 'Software Engineer'
user.save!

user = User.new
user.email = 'rarmandr@rashid.com'
user.password = 'armandassante'
user.admin = false
user.username = 'rashid90'
user.first_name = 'rashid'
user.last_name = 'armand'
user.age = 24
user.occupation = 'Crypto Engineer'
user.save!

user = User.new
user.email = 'jonathan@cespej.com'
user.password = 'javascriptisleet'
user.admin = false
user.username = 'jonthejavascriptmaster'
user.first_name = 'jonathan'
user.last_name = 'cespedes'
user.age = 27
user.occupation = 'Javascript Lover/Engineer'
user.save!

user = User.new
user.email = 'stephen@stephenwolf.com'
user.password = 'swimorswam'
user.admin = false
user.username = 'stephenwiththebeffen'
user.first_name = 'stephen'
user.last_name = 'park'
user.age = 27
user.occupation = 'Lead iOS Engineer'
user.save!

user = User.new
user.email = 'har@dik.com'
user.password = 'hardikharidk'
user.admin = false
user.username = 'theshahohardik'
user.first_name = 'hardik'
user.last_name = 'shah'
user.age = 27
user.occupation = 'Nomadic Software Engineer'
user.save!

user = User.new
user.email = 'mike@salv.com'
user.password = 'savethesalvator'
user.admin = false
user.username = 'mikeysalvatrippy2'
user.first_name = 'michael'
user.last_name = 'salvatore'
user.age = 24
user.occupation = 'Entrepreneurial Engineer'
user.save!

user = User.new
user.email = 'gio@vanni.com'
user.password = 'giogiogio'
user.admin = false
user.username = 'giothevanni'
user.first_name = 'giovanni'
user.last_name = 'unknown'
user.age = 29
user.occupation = 'Mystery Engineer'
user.save!

user = User.new
user.email = 'rach@el.com'
user.password = 'israelrocks'
user.admin = false
user.username = 'bressrachel2'
user.first_name = 'rachel'
user.last_name = 'bressner'
user.age = 24
user.occupation = 'Lead Ruby Engineer'
user.save!

user = User.new
user.email = 'to@ny.com'
user.password = 'macamacarena'
user.admin = false
user.username = 'mrworldwide'
user.first_name = 'tony'
user.last_name = 'macas'
user.age = 37
user.occupation = 'Python Engineer'
user.save!

user = User.new
user.email = 'martin@martin.com'
user.password = 'notmartin'
user.admin = false
user.username = 'totallynotmartin'
user.first_name = 'martin'
user.last_name = 'sosa'
user.age = 26
user.occupation = 'Lead Rust Engineer'
user.save!

user = User.new
user.email = 'maria@mashaaba.com'
user.password = 'shinaabamaria'
user.admin = false
user.username = 'ms.edgecase'
user.first_name = 'maria'
user.last_name = 'abashina'
user.age = 27
user.occupation = 'Edge Case Engineer'
user.save!

user = User.new
user.email = 'yor@vin.com'
user.password = 'rasputin'
user.admin = false
user.username = 'yorvirasputin'
user.first_name = 'yorvin'
user.last_name = 'rosario'
user.age = 23
user.occupation = 'iOS/Android Engineer'
user.save!


#This is how you create a Comment
Comment.create(review_id: 1, user_id: 1, content: 'this review was pretty good.')

#This creates a review
Review.create(user_id: 1, package_id: 1, overall_rating: 10, pros: 'can quickly set up ab app with ease', cons: 'bloated af', general: 'i generally like rails', saved_time: 1, cool_design: 1, advanced_features: 0, less_bulky: 0, better_docs: 0, more_customize: 1, hard_to_learn: 1, bad_navigation: 0, many_files: 1, hard_customize: 1)
Review.create(user_id: 2, package_id: 3, overall_rating: 9, pros: 'can quickly set up ab app with ease', cons: 'bloated af', general: 'i generally like this package', saved_time: 0, cool_design: 1, advanced_features: 0, less_bulky: 1, better_docs: 0, more_customize: 1, hard_to_learn: 0, bad_navigation: 1, many_files: 1, hard_customize: 1)
#This creates a ReviewRating
ReviewRating.create(user_id: 1, review_id: 1, thumbs_up: 1, thumbs_down: 0)