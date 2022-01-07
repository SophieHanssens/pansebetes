# require 'open-uri'
# require 'nokogiri'

# # def name(animal_doc)
# #   a_element = animal_doc.search('h1')
# #   a_element.text.strip
# # end

# # def color(animal_doc)
# #   a_element = animal_doc.search('.animal-facts-box')
# #   if a_element.search('dd')[6] != nil
# #     a_element.search('dd')[6].text.strip
# #   else
# #     ''
# #   end
# # end

# def scientific_name(animal_doc)
#   a_element = animal_doc.search('.animal-facts')
#   if a_element.search('dt').text.include?('Scientific Name')
#     p a_element.search('dd').text.strip
#   else
#     p ''
#   end
# end

# def getAnimalPage(animal_url)
#   url = animal_url
#   animal_file = URI.open(url).read
#   animal_doc = Nokogiri::HTML(animal_file)

#   scientific_name(animal_doc)
#   # name = name(animal_doc)
#   # color = color(animal_doc)

#   # animal = Animal.new(name:
#   #                     color:
#   #                     description:
#   #                     family:
#   #                     scientific_name: scientific_name,
#   #                     food:
#   #                     lifespan:
#   #                     wheigh:
#   #                     living:
#   #                     )
# end


# url = "https://a-z-animals.com/animals/location/europe/france/"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.card').each do |element|
#   animal_url = element.search('a')[0]['href']

#   getAnimalPage(animal_url)
# end

require 'uri'

puts "destroy all datas"
User.destroy_all
ContactCategory.destroy_all
Category.destroy_all
Animal.destroy_all
Contact.destroy_all

puts "datas destroyed"

puts "Creating Users..."
user1 = User.create!(email: 'emmanuel@emmanuel.com',
            name: 'Emmanuel',
            password: 'azerty',
            address: '56 rue Manu 56000 Nantes France',
            admin: true)

user2 = User.create!(email: 'sophie@sophie.com',
            name: 'Sophie',
            password: 'azerty',
            address: '79 avenue soso 43000 Soso City France',
            admin: true)

user3 = User.create!(email: 'loris@loris.com',
            name: 'Loris',
            password: 'azerty',
            address: '48 traverse Mars 13006 Marseille France',
            admin: true)

puts "Users ok !"

puts "creating categories"

cat1 = Category.create!(name: 'Oiseaux')
cat2 = Category.create!(name: 'Rongeurs')
cat3 = Category.create!(name: 'Faune sauvage')
cat4 = Category.create!(name: 'Chats')
cat5 = Category.create!(name: 'Chiens')
cat6 = Category.create!(name: 'Tortues')
cat7 = Category.create!(name: 'Poissons')
cat8 = Category.create!(name: 'Insectes')

puts "categories created"



puts "creating animals"
herisson = Animal.create!(name: "Hérisson",
              category_id: cat3.id,
              color: "Marron",
              description: "Un hérisson vu de jour, blessé ou trop petit doit être récupéré. Il faut vérifier qu’il n’a pas d’œufs de mouche (semblables à des grains de riz) sur lui ou des tiques. Enlever les parasites avant de le placer dans un carton eau avec une bouillotte chaude, sous un linge ou une polaire. Laisser de l’eau et des croquettes pour chat au poulet à proximité ainsi que des tissus et polaire supplémentaires dans le carton pour qu’il puisse nidifier. Contacter un vétérinaire ou un centre de la faune sauvage rapidement.",
              scientific_name: "Erinaceus europaeus",
              weight: "De 0,8 à 1,5 kg",
              )

photo_herisson = URI.open('https://www.consoglobe.com/wp-content/uploads/2020/09/mission-herisson_shutterstock_776419591.jpg.webp')
herisson.photo.attach(io: photo_herisson, filename: "herisson.jpg", content_type: 'image/jpg')
herisson.save!
puts "herisson created"

ane = Animal.create!(name: "âne corse",
              category_id: cat3.id,
              color: "gris",
              description: "aime bien les figues",
              scientific_name: "chevalus",
              weight: "200 kg"
              )

photo_ane = URI.open('https://www.tourismebretagne.com/app/uploads/crt-bretagne/2019/06/randonne-avec-un-ne-baie-de-saint-brieuc-randonne-avec-un-ne-korrigne-640x360.jpg')
ane.photo.attach(io: photo_ane, filename: "ane.jpg", content_type: 'image/jpg')
ane.save!
puts "ane created"

mesange = Animal.create!(name: "Mésange noire",
              category_id: cat1.id,
              color: "Gris, noir, beige",
              description: "Laisser dans le noir dans une petite boîte fermée, ne pas nourrir, ne pas abreuver",
              scientific_name: "Periparus ater",
              weight: "19-10 g"
              )

photo_mesange = URI.open('https://lemagdesanimaux.ouest-france.fr/images/dossiers/2021-03/mesange-bleue-063413.jpg')
mesange.photo.attach(io: photo_mesange, filename: "mesange.jpg", content_type: 'image/jpg')
mesange.save!
puts "mesange created"

moineau = Animal.create!(name: "Moineau friquet",
              category_id: cat1.id,
              color: "Marron, Beige, Blanc",
              description: "Laisser dans le noir dans une petite boîte fermée, ne pas nourrir, ne pas abreuver",
              scientific_name: "Passer montanus",
              weight: "19 à 25 g"
              )

photo_moineau = URI.open('https://images.pexels.com/photos/86591/sparrow-bird-animal-nature-86591.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
moineau.photo.attach(io: photo_moineau, filename: "moineau.jpg", content_type: 'image/jpg')
moineau.save!
puts "moineau created"

renard = Animal.create!(name: "Renard roux",
              category_id: cat3.id,
              color: "Orange, Blanc",
              description: "",
              scientific_name: "Vulpes vulpes",
              weight: "6 à 10 kg"
              )

photo_renard = URI.open('https://images.pexels.com/photos/6244506/pexels-photo-6244506.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
renard.photo.attach(io: photo_renard, filename: "renard.jpg", content_type: 'image/jpg')
renard.save!
puts "renard created"

grenouille = Animal.create!(name: "Grenouille verte",
              category_id: cat3.id,
              color: "Vert",
              description: "Laisser dans le noir dans une petite boîte fermée, ne pas nourrir, ne pas abreuver",
              scientific_name: "Pelophylax kl. esculentus",
              weight: "10 à 30 g"
              )

photo_grenouille = URI.open('http://www.grenouilles.free.fr/especes/images/Grenouille-Verte-1.jpg')
grenouille.photo.attach(io: photo_grenouille, filename: "grenouille.jpg", content_type: 'image/jpg')
grenouille.save!
puts "grenouille created"

puts "animal created"

puts "creating contacts"

contact1 = Contact.create!(name: "Dr Fly",
                user_id: user1.id,
                address: '146 rue de Rome 13006 Marseille France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact2 = Contact.create!(name: "Dr Health",
                user_id: user3.id,
                address: "97 rue charras 13007 Marseille France",
                phone_number: "0491654321",
                statut: 'Vétérinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )

puts "Contacts created"

puts "creating Contact_categories"
ContactCategory.create!(category_id: cat1.id, contact_id: contact1.id)
ContactCategory.create!(category_id: cat3.id, contact_id: contact1.id)
ContactCategory.create!(category_id: cat4.id, contact_id: contact2.id)
ContactCategory.create!(category_id: cat6.id, contact_id: contact2.id)
ContactCategory.create!(category_id: cat8.id, contact_id: contact2.id)
puts "All finished !"
