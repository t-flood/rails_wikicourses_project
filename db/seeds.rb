# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.delete_all
Topic.create!([{:title => "Arts and culture"},
  {:title => "Geography and places"},
  {:title => "Health and fitness "},
  {:title => "History and events"},
  {:title => "Mathematics and abstractions"},
  {:title => "Natural sciences and nature"},
  {:title => "Philosophy and thinking"},
  {:title => "Religion and spirituality"},
  {:title => "Social sciences and society"},
  {:title => "Technology and applied sciences"}])
