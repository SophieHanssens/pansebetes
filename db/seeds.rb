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
User.create!(email: 'emmanuel@emmanuel.com', name: 'Emmanuel', phone_number: '890895643322', password: 'azerty')
User.create!(email: 'loris@loris.com', name: 'Loris', phone_number: '89006789', password: 'azerty')
User.create!(email: 'sophie@sophie.com', name: 'Sophie', phone_number: '567543221', password: 'azerty')
puts "Users ok !"

puts "creating animals"
Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )

Animal.create!(name:
              color:
              description:
              family:
              scientific_name:
              food:
              lifespan:
              wheigh:
              living:
              )
puts "animal created"
