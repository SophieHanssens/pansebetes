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
              description: "<h2>Quand **déplacer** ou **récupérer** un *hérisson* ?</h2><br>

**1.** Un hérisson *de jour* est en grande difficulté ou mourant. Récupérez-le. <br>
**2.** Un hérisson, *de jour* ou *de nuit*, qui n’est pas plus grand qu’une main (environ 600 grammes) doit être mis au chaud car il ne peut pas passer l’hiver. Récupérez-le. <br>
**3.** Un hérisson en danger (en bord de route, sur la route, dans le jardin au moment de passer la tondeuse) qui n’est pas actif de jour ni trop petit en hiver doit uniquement être <em>déplacé</em> en lieu sûr et pas trop loin du lieu où il se trouvait. <br>
**4.** Un hérisson bébé (choupisson) ne doit pas être touché dans un nid. Si un nid a été dérangé, empêcher la mère de partir et ne pas toucher les petits sans gants. <br><br>

<h2>Comment prendre soin du hérisson ?</h2><br>

**1.** Vérifier qu’il n’est pas couvert d’œufs de mouche (semblables à des grains de riz).<br>
**2.** Les enlever avec une brosse à dents, le cas échéant.<br>
**3.** Vérifier s’il a des tiques et les enlever le cas échéant.<br>
**4.** Le rentrer dans un carton ou une boîte haute.<br>
**5.** Le placer contre une bouillotte (bouteille d’eau chaude dans une polaire, quelle que soit la saison), jamais en contact direct avec sa peau et une fois nettoyé (la chaleur fait éclore les œufs).<br>
**6.** Lui mettre des tissus et polaires à disposition pour qu’il puisse se nicher.<br>
**7.** Mettre de l’eau et des croquettes pour chat au poulet à disposition.<br>
**8.** Ne jamais donner de lait de vache ou de pain (indigestes)<br>
**9.** Contacter un vétérinaire ou un centre de faune sauvage proche.<br>

",
              scientific_name: "Erinaceus europaeus",
              weight: "De 0,8 à 1,5 kg",
              )

photo_herisson = URI.open('https://www.consoglobe.com/wp-content/uploads/2020/09/mission-herisson_shutterstock_776419591.jpg.webp')
herisson.photo.attach(io: photo_herisson, filename: "herisson.jpg", content_type: 'image/jpg')
herisson.save!
puts "herisson created"

ane = Animal.create!(name: "Ane corse",
              category_id: cat3.id,
              color: "gris",
              description: "<h2>Quand **déplacer** ou **récupérer** un *âne* ?</h2><br>

**1.** Si l'âne veut vous suivre et être déplacé, il en prendra seul la décision.<br>
**2.** S'il a l'air perdu, indiquez-lui son chemin.<br><br>

<h2>Comment prendre soin d'un *âne* ?</h2><br>

**1.** Caressez-le gentiment.<br>
**2.** Donnez-lui des figues.<br>",
              scientific_name: "Equus asinus",
              weight: "200 kg"
              )

photo_ane = URI.open('https://www.tourismebretagne.com/app/uploads/crt-bretagne/2019/06/randonne-avec-un-ne-baie-de-saint-brieuc-randonne-avec-un-ne-korrigne-640x360.jpg')
ane.photo.attach(io: photo_ane, filename: "ane.jpg", content_type: 'image/jpg')
ane.save!
puts "ane created"

mesange = Animal.create!(name: "Mésange noire",
              category_id: cat1.id,
              color: "Gris, noir, beige",
              description: "<h2>Quand **déplacer** ou **récupérer** une *mésange noire* ?</h2><br>

**1.** Une mésange blessée de manière visible est à la merci des prédateurs. Récupérez-la.<br>
**2.** Une mésange qui semble sonnée et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-la.<br>

<h2>Comment prendre soin d'une *mésange noire* ?</h2><br>

**1.** Recouvrez-la d'un linge pour la mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-la ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-la avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.",
              scientific_name: "Periparus ater",
              weight: "19-10 g"
              )

photo_mesange = URI.open('https://www.wildlifetrusts.org/sites/default/files/styles/node_hero_desk_wide/public/2017-12/Great%20Tit%20%20153%20%28c%29%20Bob%20Coyle.jpg?h=4f3f1b2a&itok=QzEMyOQ8')
mesange.photo.attach(io: photo_mesange, filename: "mesange.jpg", content_type: 'image/jpg')
mesange.save!
puts "mesange created"

moineau = Animal.create!(name: "Moineau friquet",
              category_id: cat1.id,
              color: "Marron, Beige, Blanc",
              description: "<h2>Quand **déplacer** ou **récupérer** un *moineau friquet* ?</h2><br>

**1.** Un moineau friquet blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un moineau friquet qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br>

<h2>Comment prendre soin d'un *moineau friquet* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.
",
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
