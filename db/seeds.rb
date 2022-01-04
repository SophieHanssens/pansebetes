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

puts "destroy all datas"
User.destroy_all
Contact.destroy_all
Animal.destroy_all
puts "datas destroyed"

puts "Creating Users..."
User.create!(email: 'emmanuel@emmanuel.com',
            name: 'Emmanuel',
            password: 'azerty',
            street: '56 rue Manu',
            zipcode: '56000',
            city: 'Nantes',
            country: 'France')

User.create!(email: 'sophie@sophie.com',
            name: 'Sophie',
            password: 'azerty',
            street: '79 avenue soso',
            zipcode: '43000',
            city: 'Soso City',
            country: 'France')

User.create!(email: 'loris@loris.com',
            name: 'Loris',
            password: 'azerty',
            street: '48 traverse Mars',
            zipcode: '13006',
            city: 'Marseille',
            country: 'France')

puts "Users ok !"

puts "creating animals"
Animal.create!(name: "Hérisson",
              color: "Marron",
              description: "* Conseil 1 (ex. laisser dans le noir dans une petite boîte fermée)
                            * Conseil 2 (ex. ne pas nourrir)
                            * Conseil 3 (ex. ne pas abreuver)",
              species: "Mammifère",
              scientific_name: "Erinaceus europaeus",
              weight: "De 0,8 à 1,5 kg",
              )

Animal.create!(name: "Mésange noire",
              color: "Gris, noir, beige",
              description: "* Conseil 1 (ex. laisser dans le noir dans une petite boîte fermée)
                            * Conseil 2 (ex. ne pas nourrir)
                            * Conseil 3 (ex. ne pas abreuver)",
              species: "Oiseau",
              scientific_name: "Periparus ater",
              weight: "19-10 g"
              )

Animal.create!(name: "Moineau friquet",
              color: "Marron, Beige, Blanc",
              description: "* Conseil 1 (ex. laisser dans le noir dans une petite boîte fermée)
                            * Conseil 2 (ex. ne pas nourrir)
                            * Conseil 3 (ex. ne pas abreuver)",
              species: "Oiseau",
              scientific_name: "Passer montanus",
              weight: "19 à 25 g"
              )

Animal.create!(name: "Renard roux",
              color: "Orange, Blanc",
              description: "* Conseil 1 (ex. laisser dans le noir dans une petite boîte fermée)
                            * Conseil 2 (ex. ne pas nourrir)
                            * Conseil 3 (ex. ne pas abreuver)",
              species: "Mammifère",
              scientific_name: "Vulpes vulpes",
              weight: "6 à 10 kg"
              )

Animal.create!(name: "Grenouille verte",
              color: "Vert",
              description: "* Conseil 1 (ex. laisser dans le noir dans une petite boîte fermée)
                            * Conseil 2 (ex. ne pas nourrir)
                            * Conseil 3 (ex. ne pas abreuver)",
              species: "Batracien",
              scientific_name: "Pelophylax kl. esculentus",
              weight: "10 à 30 g"
              )

puts "animal created"

puts "creating contacts"

Contact.create!(name: "Dr Fly",
                speciality: "Oiseau",
                street: "146 rue de Rome",
                zipcode: "13006",
                city: "Marseille",
                country: "France",
                phone_number: "0491456789"
                )

Contact.create!(name: "Dr Health",
                speciality: "Batracien",
                street: "97 rue charras",
                zipcode: "13007",
                city: "Marseille",
                country: "France",
                phone_number: "0491654321"
                )

puts "Contacts created"
