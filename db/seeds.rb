# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

formation = Formation.create(formation_name: 'Anglais')
formation = Formation.create(formation_name: 'Informatique')
formation = Formation.create(formation_name: 'Art')

cour = Cour.create(cours_name: 'Lesson 1', formations_id: 1)
cour = Cour.create(cours_name: 'Lesson 2', formations_id: 1)
cour = Cour.create(cours_name: 'Lesson 3', formations_id: 1)
cour = Cour.create(cours_name: 'Lesson 4', formations_id: 1)
cour = Cour.create(cours_name: 'Les bases', formations_id: 2)
