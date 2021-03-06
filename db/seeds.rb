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
Favorite.destroy_all
Itinerary.destroy_all
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

user4 = User.create!(email: 'manu@manu.com',
            name: 'Manu',
            password: 'azerty',
            address: '42 Wallaby Way 13006 Marseille France',
            admin: false)

user5 = User.create!(email: 'suli@suli.com',
            name: 'Suli',
            password: 'azerty',
            address: '7bis Boulevard Etienne Boyer 13530 Trets France',
            admin: false)

user6 = User.create!(email: 'jeff@jeff.com',
            name: 'Jeff',
            password: 'azerty',
            address: '3 Bd Michelet 13008 Marseille France',
            admin: false)

user7 = User.create!(email: 'bastien@bastien.com',
            name: 'Bastien',
            password: 'azerty',
            address: '7 avenue du Mar??chal Ney 13011 Marseille France',
            admin: false)

user8 = User.create!(email: 'solenn@solenn.com',
            name: 'Solenn',
            password: 'azerty',
            address: '60 Chemin de la Bagasse 13530 Trets France',
            admin: false)

user9 = User.create!(email: 'broco@broco.com',
            name: 'L??onard',
            password: 'azerty',
            address: '6 Boulevard des R??ves Absalom Loin',
            admin: false)

user10 = User.create!(email: 'so@so.com',
            name: 'Sophie',
            password: 'azerty',
            address: '7 bis Boulevard Etienne Boyer 13530 Trets',
            admin: false)

puts "Users ok !"

puts "creating categories"

cat1 = Category.create!(name: 'Oiseau')
cat2 = Category.create!(name: 'Rongeur')
cat3 = Category.create!(name: 'Faune sauvage')
cat4 = Category.create!(name: 'Chat')
cat5 = Category.create!(name: 'Chien')
cat6 = Category.create!(name: 'Tortue')
cat7 = Category.create!(name: 'Poisson')
cat8 = Category.create!(name: 'Insecte')
cat9 = Category.create!(name: 'Reptile')

puts "categories created"



puts "creating animals"

mesange = Animal.create!(name: "M??sange noire",
              category_id: cat1.id,
              color: "Gris, noir, beige",
              particularity: "Petite",
              note: "Ne pas confondre avec la m??sange bleue, la charbonni??re ou la nonnette",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *m??sange noire* ?</h2><br>

**1.** Une m??sange bless??e de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-la.<br>
**2.** Une m??sange qui semble sonn??e et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-la.<br><br>

<h2>Comment prendre soin d'une *m??sange noire* ?</h2><br>

**1.** Recouvrez-la d'un linge pour la mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-la ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-la avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.",
              scientific_name: "Periparus ater",
              weight: "19-10 g"
              )

photo_mesange = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1642074835/M%C3%A9sange_noire_bwshdo.jpg')
mesange.photo.attach(io: photo_mesange, filename: "mesange.jpg", content_type: 'image/jpg')
mesange.save!
puts "mesange created"

moineau = Animal.create!(name: "Moineau friquet",
              category_id: cat1.id,
              color: "Marron, Beige, Blanc",
              particularity: "Petit",
              note: "N'h??sitez pas ?? lui mettre des boules de graisse pour l'hiver.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *moineau friquet* ?</h2><br>

**1.** Un moineau friquet bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un moineau friquet qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *moineau friquet* ?</h2><br>
euvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'am
**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abrener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.
",
              scientific_name: "Passer montanus",
              weight: "19 ?? 25 g"
              )

photo_moineau = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918791/Moineau_ncaesu.jpg')
moineau.photo.attach(io: photo_moineau, filename: "moineau.jpg", content_type: 'image/jpg')
moineau.save!
puts "moineau created"

renard = Animal.create!(name: "Renard roux",
              category_id: cat3.id,
              color: "Roux, blanc",
              particularity: "Carnivore, dentu",
              note: "Le renard a peur de l'homme mais est friand de poules.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *renard* ?</h2><br>

**1.** Un renard bless?? de mani??re visible est en difficult??. Aidez-le.<br>
**2.** Un renard en errance qui ne s'enfuit pas ?? votre approche peut avoir subi un choc *ou* ??tre perdu. S'il s'agit d'un juv??nile, n'agissez pas et observez. Sa m??re n'est peut-??tre pas loin.<br><br>

<h2>Comment prendre soin d'un *renard* ?</h2><br>

**1.** Contactez en priorit?? un v??t??rinaire proche pour obtenir de l'aide. Le renard est un animal sauvage dot?? de dents puissantes. M??me bless??, par peur ou par douleur, il peut vous attaquer.<br>
**2.** Restez en observation le temps qu'un professionnel habilit?? vienne sur les lieux.<br>
**3.** Si c'est impossible et que l'animal est inconscient, munissez-vous d'une caisse de transport pour canid?? et, en l'enroulant dans une couverture, r??cup??rez-le pour l'y glisser.<br>",
              scientific_name: "Vulpes vulpes",
              weight: "6 ?? 10 kg"
              )

photo_renard = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918844/Renard_udfcvc.jpg')
renard.photo.attach(io: photo_renard, filename: "renard.jpg", content_type: 'image/jpg')
renard.save!
puts "renard created"

grenouille = Animal.create!(name: "Grenouille verte",
              category_id: cat3.id,
              color: "Vert",
              particularity: "Bruyante",
              note: "A ne pas confondre avec le crapaud.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *grenouille verte* ?</h2><br>

**1.** Une grenouille verte bless??e de mani??re visible est en difficult??. R??cup??rez-la.<br>
**2.** Une grenouille verte au bord d'une route passante est en danger. D??placez-la.<br><br>

<h2>Comment prendre soin d'un *grenouille verte* ?</h2><br>

**1.** Les batraciens peuvent ??tre urticants. Ne d??placez pas une grenouille verte ?? mains nues.<br>
**2.** Poussez-la d??licatement avec un objet non susceptible de la blesser pour la diriger vers un carton ou une bo??te.<br>
**3.** Si elle est bless??e, fermez le carton, faites des petits trous pour la respiration et emmenez-la chez un professionnel.<br>
**4.** Si elle n'est pas bless??e, faites-la uniquement traverser la voie et approchez-la d'un point d'eau.<br>",
              scientific_name: "Pelophylax kl. esculentus",
              weight: "10 ?? 30 g"
              )

photo_grenouille = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919025/Grenouille_ix6rqe.jpg')
grenouille.photo.attach(io: photo_grenouille, filename: "grenouille.jpg", content_type: 'image/jpg')
grenouille.save!
puts "grenouille created"

couleuvre = Animal.create!(name: "Couleuvre helv??tique",
              category_id: cat9.id,
              color: "Vert, gris, brun",
              particularity: "Longue",
              note: "Elle n'est pas venimeuse.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *couleur helv??tique* ?</h2><br>

Les couleuvres sont inoffensives.Ne les d??placez pas.",
              scientific_name: "Natrix helvetica",
              weight: "80 ?? 100 g"
              )

photo_couleuvre = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919101/Couleuvre001_iollq8.jpg')
couleuvre.photo.attach(io: photo_couleuvre, filename: "couleuvre.jpg", content_type: 'image/jpg')
couleuvre.save!
puts "couleuvre created"

lezard = Animal.create!(name: "L??zard ?? deux raies",
              category_id: cat9.id,
              color: "Vert, jaune",
              particularity: "Timide",
              note: "Il peut perdre sa queue.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *l??zard ?? deux raies* ?</h2><br>

**1.** Un l??zard vert bless?? de mani??re visible est en difficult??. R??cup??rez-le.<br>
**2.** Un l??zard vert au bord d'une route passante est en danger. D??placez-le.<br><br>

<h2>Comment prendre soin d'un *l??zard ?? deux raies* ?</h2><br>

**1.** Ne l'attrapez pas par la queue. Elle pourrait se d??tacher.<br>
**2.** Poussez-le d??licatement avec un objet non susceptible de le blesser pour le diriger vers un carton ou une bo??te.<br>
**3.** S'il est bless??e, fermez le carton, faites des petits trous pour la respiration et emmenez-le chez un professionnel.<br>
**4.** S'il n'est pas bless??, faites-le uniquement traverser la voie et approchez-le d'un point rocheux.<br>",
              scientific_name: "Lacerta bilineata bilineata",
              weight: "80 ?? 100 g"
              )

photo_lezard = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919137/L%C3%A9zard001_ygyfmf.jpg')
lezard.photo.attach(io: photo_lezard, filename: "lezard.jpg", content_type: 'image/jpg')
lezard.save!
puts "l??zard created"

lezard2 = Animal.create!(name: "L??zard des murailles",
              category_id: cat9.id,
              color: "Brun, beige",
              particularity: "Discret",
              note: "Il peut perdre sa queue.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *couleur helv??tique* ?</h2><br>

**1.** Un l??zard vert bless?? de mani??re visible est en difficult??. R??cup??rez-le.<br>
**2.** Un l??zard vert au bord d'une route passante est en danger. D??placez-le.<br><br>

<h2>Comment prendre soin d'un *l??zard des murailles* ?</h2><br>

**1.** Ne l'attrapez pas par la queue. Elle pourrait se d??tacher.<br>
**2.** Poussez-le d??licatement avec un objet non susceptible de le blesser pour le diriger vers un carton ou une bo??te.<br>
**3.** S'il est bless??e, fermez le carton, faites des petits trous pour la respiration et emmenez-le chez un professionnel.<br>
**4.** S'il n'est pas bless??, faites-le uniquement traverser la voie et approchez-le d'un point rocheux.<br>",
              scientific_name: "Lacerta bilineata bilineata",
              weight: "80 ?? 100 g"
              )

photo_lezard2 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919170/L%C3%A9zard002_olausa.jpg')
lezard2.photo.attach(io: photo_lezard2, filename: "lezard2.jpg", content_type: 'image/jpg')
lezard2.save!
puts "l??zard created"

couleuvre2 = Animal.create!(name: "Couleuvre verte et jaune",
              category_id: cat9.id,
              color: "Verte, jaune",
              particularity: "Longue",
              note: "Elle n'est pas venimeuse.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *couleuvre verte et jaune* ?</h2><br>

Les couleuvres sont inoffensives. Ne les d??placez pas.",
              scientific_name: "Hierophis viridiflavus",
              weight: "80 ?? 100 g"
              )

photo_couleuvre2 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919198/Couleuvre002_ejffqh.jpg')
couleuvre2.photo.attach(io: photo_couleuvre2, filename: "couleuvre2.jpg", content_type: 'image/jpg')
couleuvre2.save!
puts "couleuvre created"

couleuvre3 = Animal.create!(name: "Couleuvre vip??rine",
              category_id: cat9.id,
              color: "Brun, rouge",
              particularity: "Longue",
              note: "Elle n'est pas venimeuse.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *couleuvre verte et jaune* ?</h2><br>

Les couleuvres sont inoffensives. Ne les d??placez pas.",
              scientific_name: "Natrix maura",
              weight: "80 ?? 100 g"
              )

photo_couleuvre3 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919238/Couleuvre003_dmbrum.jpg')
couleuvre3.photo.attach(io: photo_couleuvre3, filename: "couleuvre3.jpg", content_type: 'image/jpg')
couleuvre3.save!
puts "couleuvre created"

fouine = Animal.create!(name: "Fouine",
              category_id: cat3.id,
              color: "Brun, blanc, noir",
              particularity: "Poilue, poilu",
              note: "Elle est friande de poule.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *fouine* ?</h2><br>

**1.** Un fouine bless??e de mani??re visible est en difficult??. Aidez-la.<br>
**2.** Une fouine en errance qui ne s'enfuit pas ?? votre approche peut avoir subi un choc *ou* ??tre perdue. S'il s'agit d'une juv??nile, n'agissez pas et observez. Sa m??re n'est peut-??tre pas loin.<br><br>

<h2>Comment prendre soin d'une *fouine* ?</h2><br>

**1.** Contactez en priorit?? un v??t??rinaire proche pour obtenir de l'aide. La fouine est un animal sauvage dot?? de dents puissantes. M??me bless??e, par peur ou par douleur, elle peut vous attaquer.<br>
**2.** Restez en observation le temps qu'un professionnel habilit?? vienne sur les lieux.<br>
**3.** Si c'est impossible et que l'animal est inconscient, munissez-vous d'une caisse de transport pour canid?? et, en l'enroulant dans une couverture, r??cup??rez-le pour l'y glisser.<br>",
              scientific_name: "Martes foina",
              weight: "1,3 - 2,3 kg"
              )

photo_fouine = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919269/Fouine_lxbjj3.jpg')
fouine.photo.attach(io: photo_fouine, filename: "fouine.jpg", content_type: 'image/jpg')
fouine.save!
puts "fouine created"

chat = Animal.create!(name: "Chat",
              category_id: cat4.id,
              color: "Tigr??",
              particularity: "Majestueuse, d??esse, imp??ratrice, rus??e, charmante, intelligente, d??termin??e, gourmande",
              note: "Elle adore ??tre peign??e.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *chat* ?</h2><br>

**1.** Un chat bless?? de mani??re visible est en difficult??. Aidez-le.<br>
**2.** Une chat qui semble perdu, hagard, peut-??tre aid??.<br><br>

<h2>Comment prendre soin d'un *chat* ?</h2><br>

**1.** Tentez d'attraper le chat, soit ?? l'aide d'une cage trappe fournie par un v??t??rinaire soit en l'attirant avec de la nourriture.<br>
**2.** Gratuitement, les v??t??rinaires peuvent scanner la puce de l'animal, s'il est puc??, ou v??rifier la pr??sence d'un tatouage.<br>
**3.** Partager ses photos sur les r??seaux sociaux.<br>",
              scientific_name: "Felis catus",
              weight: "1 - 7 kg"
              )

photo_chat = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641898979/Bastet_ktri7c.jpg')
chat.photo.attach(io: photo_chat, filename: "chat.jpg", content_type: 'image/jpg')
chat.save!
puts "Bastet created"

chat2 = Animal.create!(name: "Chat",
              category_id: cat4.id,
              color: "Blanc, noir",
              particularity: "Mignon, lunaire, t??tu, affectueux, sympathique, doux, poilu, gentil",
              note: "Il est timide mais affectueux.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *chat* ?</h2><br>

**1.** Un chat bless?? de mani??re visible est en difficult??. Aidez-le.<br>
**2.** Un chat qui semble perdu, hagard, peut-??tre aid??.<br><br>

<h2>Comment prendre soin d'un *chat* ?</h2><br>

**1.** Tentez d'attraper le chat, soit ?? l'aide d'une cage trappe fournie par un v??t??rinaire soit en l'attirant avec de la nourriture.<br>
**2.** Gratuitement, les v??t??rinaires peuvent scanner la puce de l'animal, s'il est puc??, ou v??rifier la pr??sence d'un tatouage.<br>
**3.** Partager ses photos sur les r??seaux sociaux.<br>",
              scientific_name: "Felis catus",
              weight: "1 - 7 kg"
              )

photo_chat2 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641900345/20201115_190317_k36q6a.jpg')
chat2.photo.attach(io: photo_chat2, filename: "chat2.jpg", content_type: 'image/jpg')
chat2.save!
puts "Lumeau created"

chien = Animal.create!(name: "Chien",
              category_id: cat5.id,
              color: "Blanc, noir, feu, brun, gris",
              particularity: "Grand, petit, baveux, poilu",
              note: "La fid??lit?? incarn??e.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *chien* ?</h2><br>

**1.** Un chien bless?? de mani??re visible est en difficult??. Aidez-le.<br>
**2.** Un chien qui semble perdu, hagard, peut-??tre aid??.<br><br>

<h2>Comment prendre soin d'un *chien* ?</h2><br>

**1.** Tentez d'attraper le chien, soit ?? l'aide d'une cage trappe fournie par un v??t??rinaire soit en l'attirant avec de la nourriture.<br>
**2.** Gratuitement, les v??t??rinaires peuvent scanner la puce de l'animal, s'il est puc??, ou v??rifier la pr??sence d'un tatouage.<br>
**3.** Partager ses photos sur les r??seaux sociaux.<br>",
              scientific_name: "Canis lupus familiaris",
              weight: "15 - 30 kg"
              )

photo_chien = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919310/Chien_wnphqp.webp')
chien.photo.attach(io: photo_chien, filename: "chien.jpg", content_type: 'image/jpg')
chien.save!
puts "chien created"

loir = Animal.create!(name: "Loir",
              category_id: cat3.id,
              color: "Brun, beige, gris",
              particularity: "Poilu, discret, vorace",
              note: "Petite cr??ature gourmande.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *loir* ?</h2><br>

**1.** Un loir bless?? de mani??re visible est en difficult??. Aidez-le.<br>
**2.** Un loir en errance qui ne s'enfuit pas ?? votre approche peut avoir subi un choc *ou* ??tre perdu. S'il s'agit d'une juv??nile, n'agissez pas et observez. Sa m??re n'est peut-??tre pas loin.<br>

<h2>Comment prendre soin d'un *loir* ?</h2><br>

**1.** Contactez en priorit?? un v??t??rinaire proche pour obtenir de l'aide. Le loir est un animal sauvage  et craintif.
**2.** Poussez-le d??licatement avec un objet non susceptible de le blesser pour le diriger vers un carton ou une bo??te.<br>
**3.** S'il est bless??e, fermez le carton, faites des petits trous pour la respiration et emmenez-le chez un professionnel.<br>",
              scientific_name: "Glis glis",
              weight: "80 - 250g"
              )

photo_loir = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641901248/loir_u4qecw.png')
loir.photo.attach(io: photo_loir, filename: "loir.jpg", content_type: 'image/jpg')
loir.save!
puts "loir created"

chauvesouris = Animal.create!(name: "Chauve-souris",
              category_id: cat3.id,
              color: "Noir, brun",
              particularity: "Nocturne, petite",
              note: "Elle peut dormir derri??re vos volets.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *chauve-souris* ?</h2><br>

**1.** Une chauve-souris bless??e de mani??re visible est en difficult??. Aidez-la.<br>
**2.** Une chauve-souris rentr??e dans votre maison et volant fr??n??tiquement est en danger. Aidez-la.<br>

<h2>Comment prendre soin d'une *chauve-souris * ?</h2><br>

**1.** Pour faire sortir une chauve-souris de chez soi, il faut ouvrir toutes les fen??tres de la pi??ce donnant vers l'ext??rieur, ??teindre les lumi??res et attendre dix minutes.
**2.** Si elle est bless??e, contactez imm??diatemment un professionnel. On ne peut ni d??tenir ni d??placer une chauve-souris.<br>
**3.** Attention, ne la touchez pas, elle peut ??tre porteuse de la rage.<br>",
              scientific_name: "Chiroptera",
              weight: "4 - 45g"
              )

photo_chauvesouris = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919551/Chauve-souris_j4itdb.jpg')
chauvesouris.photo.attach(io: photo_chauvesouris, filename: "chauvesouris.jpg", content_type: 'image/jpg')
chauvesouris.save!
puts "chauve-souris created"

piegrieche = Animal.create!(name: "Pie-gri??che ??corcheur",
              category_id: cat1.id,
              color: "Beige, rouge, blanc, noir, gris",
              particularity: "Petite, petit, insectivore",
              note: "Attention ?? ne pas confondre avec la linotte.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *pie-gri??che ??corcheur* ?</h2><br>

**1.** Une pie-gri??che ??corcheur bless??e de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-la.<br>
**2.** Une pie-gri??che ??corcheur qui semble sonn??e et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-la.<br><br>

<h2>Comment prendre soin d'une *pie-gri??che ??corcheur* ?</h2><br>

**1.** Recouvrez-la d'un linge pour la mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-la ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-la avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.",
              scientific_name: "Lanius collurio",
              weight: "23 - 40g"
              )

photo_piegrieche = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919621/Pie_gri%C3%A8che_bknrke.jpg')
piegrieche.photo.attach(io: photo_piegrieche, filename: "piegrieche.jpg", content_type: 'image/jpg')
piegrieche.save!
puts "pie-gri??che ??corcheur created"

guepier = Animal.create!(name: "Gu??pier d'Europe",
              category_id: cat1.id,
              color: "Bleu, jaune, brun, roux, vert",
              particularity: "Petit, insectivore",
              note: "Attention, ?? ne pas confondre avec la huppe fasci??e.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *gu??pier d'Europe* ?</h2><br>

**1.** Un gu??pier d'Europe bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un gu??pier d'Europe qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *gu??pier d'Europe* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-la avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Merops apiaster",
              weight: "50 - 65g"
              )

photo_guepier = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919657/Gu%C3%AApier_zma0yg.jpg')
guepier.photo.attach(io: photo_guepier, filename: "guepier.jpg", content_type: 'image/jpg')
guepier.save!
puts "gu??pier d'Europe created"

pie = Animal.create!(name: "Pie",
              category_id: cat1.id,
              color: "Noir, blanc, bleu",
              particularity: "Moyenne, moyen, bavarde",
              note: "Attention, elle peut ??tre voleuse.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *pie* ?</h2><br>

**1.** Une pie bless??e de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-la.<br>
**2.** Une pie qui semble sonn??e et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-la.<br><br>

<h2>Comment prendre soin d'une *pie* ?</h2><br>

**1.** Recouvrez-la d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-la ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-la avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.",
              scientific_name: "Pica pica",
              weight: "145 - 210g"
              )

photo_pie = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919706/Pie_upfzyy.jpg')
pie.photo.attach(io: photo_pie, filename: "pie.jpg", content_type: 'image/jpg')
pie.save!
puts "pie"

herisson = Animal.create!(name: "H??risson",
              category_id: cat3.id,
              color: "Marron, brun, beige",
              particularity: "Petit, piquants, pique, nocturne",
              note: "Attention, un h??risson peut avoir des puces.",
              description: "<h2>Quand un **h??risson** est-il en danger ?</h2><br>

**1.** S'il est vu de jour.<br>
**2.** S'il est apathique.<br>
**3.** S'il est vu en plein hiver et qu'il est de petite taille.<br><br>

Pour d??terminer comment vous en occuper, lisez ce qui suit ou, si vous **manquez de temps**, rendez-vous aux **contacts utiles** pour vous en remettre ?? un professionnel.<br><br>

<h2>Quand **d??placer** ou **r??cup??rer** un *h??risson* ?</h2><br>

**1.** Un h??risson *de jour* est en grande difficult?? ou mourant. R??cup??rez-le. <br>
**2.** Un h??risson, *de jour* ou *de nuit*, qui n???est pas plus grand qu???une main (environ 600 grammes) doit ??tre mis au chaud car il ne peut pas passer l???hiver. R??cup??rez-le. <br>
**3.** Un h??risson en danger (en bord de route, sur la route, dans le jardin au moment de passer la tondeuse) qui n???est pas actif de jour ni trop petit en hiver doit uniquement ??tre <em>d??plac??</em> en lieu s??r et pas trop loin du lieu o?? il se trouvait. <br>
**4.** Un h??risson b??b?? (choupisson) ne doit pas ??tre touch?? dans un nid. Si un nid a ??t?? d??rang??, emp??cher la m??re de partir et ne pas toucher les petits sans gants. <br><br>

<h2>Comment prendre soin du h??risson ?</h2><br>

**1.** V??rifier qu???il n???est pas couvert d?????ufs de mouche (semblables ?? des grains de riz).<br>
**2.** Les enlever avec une brosse ?? dents, le cas ??ch??ant.<br>
**3.** V??rifier s???il a des tiques et les enlever le cas ??ch??ant.<br>
**4.** Le rentrer dans un carton ou une bo??te haute.<br>
**5.** Le placer contre une bouillotte (bouteille d???eau chaude dans une polaire, quelle que soit la saison), jamais en contact direct avec sa peau et une fois nettoy?? (la chaleur fait ??clore les ??ufs).<br>
**6.** Lui mettre des tissus et polaires ?? disposition pour qu???il puisse se nicher.<br>
**7.** Mettre de l???eau et des croquettes pour chat au poulet ?? disposition.<br>
**8.** Ne jamais donner de lait de vache ou de pain (indigestes)<br>
**9.** Contacter un v??t??rinaire ou un centre de faune sauvage proche.<br>

",
              scientific_name: "Erinaceus europaeus",
              weight: "De 0,8 ?? 1,5 kg",
              )

photo_herisson = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918597/h%C3%A9risson_afixqa.webp')
herisson.photo.attach(io: photo_herisson, filename: "herisson.jpg", content_type: 'image/jpg')
herisson.save!
puts "herisson created"

ane = Animal.create!(name: "Ane corse",
              category_id: cat3.id,
              color: "Gris",
              particularity: "Oreilles, gourmand",
              note: "Il peut porter de petites charges.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *??ne* ?</h2><br>

**1.** Si l'??ne veut vous suivre et ??tre d??plac??, il en prendra seul la d??cision.<br>
**2.** S'il a l'air perdu, indiquez-lui son chemin.<br><br>

<h2>Comment prendre soin d'un *??ne* ?</h2><br>

**1.** Caressez-le gentiment.<br>
**2.** Donnez-lui des figues.<br>",
              scientific_name: "Equus asinus",
              weight: "200 kg"
              )

photo_ane = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918675/Ane_njdxty.jpg')
ane.photo.attach(io: photo_ane, filename: "ane.jpg", content_type: 'image/jpg')
ane.save!
puts "ane created"

pigeon = Animal.create!(name: "Pigeon biset",
              category_id: cat1.id,
              color: "Gris, bleu, vert",
              particularity: "Urbain",
              note: "Il est vorace et sympathique.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *pigeon* ?</h2><br>

**1.** Un pigeon bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un pigeon qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *pigeon* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Columba livia",
              weight: "240 - 300g"
              )

photo_pigeon = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641995997/Pigeon_biset_kbdx1w.jpg')
pigeon.photo.attach(io: photo_pigeon, filename: "pigeon.jpg", content_type: 'image/jpg')
pigeon.save!
puts "pigeon"

pigeon2 = Animal.create!(name: "Pigeon ramier",
              category_id: cat1.id,
              color: "Gris, bleu, vert, mauve",
              particularity: "Urbain",
              note: "Il est vorace et sympathique.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *pigeon* ?</h2><br>

**1.** Un pigeon bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un pigeon qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *pigeon* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Columba palumbus",
              weight: "480 - 550g"
              )

photo_pigeon2 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641995998/Pigeon_ramier_ypu8m5.jpg')
pigeon2.photo.attach(io: photo_pigeon2, filename: "pigeon2.jpg", content_type: 'image/jpg')
pigeon2.save!
puts "pigeon"

pigeon3 = Animal.create!(name: "Pigeon colombin",
              category_id: cat1.id,
              color: "Gris, bleu, vert",
              particularity: "Urbain",
              note: "Il est vorace et sympathique.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *pigeon* ?</h2><br>

**1.** Un pigeon bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un pigeon qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *pigeon* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Columba oenas",
              weight: "230 - 250g"
              )

photo_pigeon3 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641995997/Pigeon_colombin_psgkyw.jpg')
pigeon3.photo.attach(io: photo_pigeon3, filename: "pigeon3.jpg", content_type: 'image/jpg')
pigeon3.save!
puts "pigeon"

corbeau = Animal.create!(name: "Corbeau freux",
              category_id: cat1.id,
              color: "Noir",
              particularity: "Petit",
              note: "Il peut vivre jusqu'?? 20 ans.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *corbeau* ?</h2><br>

**1.** Un corbeau bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un corbeau qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *corbeau* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Corvus frugilegus",
              weight: "380 - 520g"
              )

photo_corbeau = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641997371/Corbeau_freux_zbskg2.jpg')
corbeau.photo.attach(io: photo_corbeau, filename: "corbeau.jpg", content_type: 'image/jpg')
corbeau.save!
puts "corbeau"

corneille = Animal.create!(name: "Corneille",
              category_id: cat1.id,
              color: "Noir",
              particularity: "Moyenne, moyen",
              note: "Elle est omnivore.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** une *corneille* ?</h2><br>

**1.** Une corneille bless??e de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-la.<br>
**2.** Une corneille qui semble sonn??e et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-la.<br><br>

<h2>Comment prendre soin d'une *corneille* ?</h2><br>

**1.** Recouvrez-la d'un linge pour la mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Corvus corone",
              weight: "380 - 520g"
              )

photo_corneille = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641996179/Corneille_highft.jpg')
corneille.photo.attach(io: photo_corneille, filename: "corneille.jpg", content_type: 'image/jpg')
corneille.save!
puts "corneille"

choucas = Animal.create!(name: "Choucas des tours",
              category_id: cat1.id,
              color: "Noir",
              particularity: "Moyenne, moyen",
              note: "Il est omnivore.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *choucas* ?</h2><br>

**1.** Un choucas bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un choucas qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *choucas* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Corvus monedula",
              weight: "220 - 270g"
              )

photo_choucas = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641996179/Choucas_zw0kfg.jpg')
choucas.photo.attach(io: photo_choucas, filename: "choucas.jpg", content_type: 'image/jpg')
choucas.save!
puts "choucas"

martinet = Animal.create!(name: "Martinet",
              category_id: cat1.id,
              color: "Noir, gris",
              particularity: "Moyenne, moyen",
              note: "Il ne se pose jamais au sol. A ne pas confondre avec l'hirondelle.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *martinet* ?</h2><br>

**1.** Un martinet bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un martinet qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *martinet* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Apus apus",
              weight: "35 - 100g"
              )

photo_martinet = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641996021/Martinet_kcgtc1.jpg')
martinet.photo.attach(io: photo_martinet, filename: "martinet.jpg", content_type: 'image/jpg')
martinet.save!
puts "martinet"

tortue = Animal.create!(name: "Tortue d'Hermann",
              category_id: cat6.id,
              color: "Verte",
              particularity: "Moyenne, moyen, carapace",
              note: "Toutes les tortues ne mangent pas de salade.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *martinet* ?</h2><br>

**1.** Une tortue ?? l'??tat naturel a de fortes chances de s'??tre ??chapp??e de chez ses propri??taires. R??cup??rez-la.<br>
**2.** Les v??t??rinaires peuvent v??rifier si une tortue est puc??e et appartient ?? quelqu'un.<br><br>

<h2>Comment prendre soin d'une *tortue* ?</h2><br>

**1.** Contactez un professionnel comp??tent pour d??terminer s'il s'agit d'une tortue terrestre ou aquatique.<br>
**2.** Mettez-la dans un carton le temps de la transporter.",
              scientific_name: "Testudo hermanni",
              weight: "700g - 1kg"
              )

photo_tortue = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641996179/Tortue_d_Hermann_nmncyz.jpg')
tortue.photo.attach(io: photo_tortue, filename: "tortue.jpg", content_type: 'image/jpg')
tortue.save!
puts "tortue"

merle = Animal.create!(name: "Merle",
              category_id: cat1.id,
              color: "Noir",
              particularity: "Moyenne, moyen, siffle, chant",
              note: "Un oisillon au sol n'est pas forc??ment abandonn??. Les parents surveillent souvent aux alentours.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *merle* ?</h2><br>

**1.** Un merle bless?? de mani??re visible est ?? la merci des pr??dateurs. R??cup??rez-le.<br>
**2.** Un merle qui semble sonn?? et ne s'envole pas ?? votre approche a probablement subi un choc. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *merle* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure ?? cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton perc?? de trous pour la respiration. Otez le linge et fermez le dessus de la bo??te pour maintenir l'obscurit??.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, nourrissez-le avec du hach?? de b??uf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un v??t??rinaire, proposez de l'eau avec une toute petite seringue, goutte-??-goutte, sur le bout du bec sur le c??t??. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Turdus merula",
              weight: "85 - 115g"
              )

photo_merle = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1642081014/Merle_qswnvp.jpg')
merle.photo.attach(io: photo_merle, filename: "merle.jpg", content_type: 'image/jpg')
merle.save!
puts "merle"

bourdon = Animal.create!(name: "Bourdon",
              category_id: cat8.id,
              color: "Noir, jaune",
              particularity: "Ail??, aile, poilu",
              note: "Donner du miel ou de la confiture ?? un bourdon ??puis?? peut le requinquer.",
              description: "<h2>Quand **d??placer** ou **r??cup??rer** un *bourdon* ?</h2><br>

**1.** Un bourdon au sol qui ne s'envole pas et bouge peu est en danger. R??cup??rez-le.<br>
**2.** Un bourdon qui n'??met aucun bruit est mal en point. R??cup??rez-le.<br><br>

<h2>Comment prendre soin d'un *bourdon* ?</h2><br>

**1.** Proposez-lui une feuille ou une branche pour qu'il puisse grimper dessus, le cas ??ch??ant.<br>
**2.** Proposez-lui quelque chose de sucr??, en prenant garde de ne pas le noyer dans un liquide.<br>
**3.** Laissez-lui le temps de reprendre de l'??nergie et surveillez qu'il s'envole ou non.<br>",
              scientific_name: "Apidae",
              weight: "0,4g"
              )

photo_bourdon = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1642081281/Bourdon_xlyzyh.jpg')
bourdon.photo.attach(io: photo_bourdon, filename: "bourdon.jpg", content_type: 'image/jpg')
bourdon.save!
puts "bourdon"

puts "animal created"

puts "creating contacts"

contact1 = Contact.create!(name: "Les P'tits Kipiks",
                user_id: user1.id,
                address: '146 Rue de Rome 13006 Marseille France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact2 = Contact.create!(name: "Dr. Enrico Chonaille",
                user_id: user3.id,
                address: "97 Rue Charras 13007 Marseille France",
                phone_number: "0491654321",
                statut: 'V??t??rinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )

contact3 = Contact.create!(name: "La petite Libellule",
                user_id: user2.id,
                address: '31 Bd Aristide Briand 13100 Aix-en-Provence France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact4 = Contact.create!(name: "Dr. Jean Bondyork",
                user_id: user1.id,
                address: "24 Rue Paradis 13001 Marseille France",
                phone_number: "0491654321",
                statut: 'V??t??rinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )
contact5 = Contact.create!(name: "Plumes et Quenottes",
                user_id: user2.id,
                address: "531 Av. de la Croix d'Or 13320 Bouc-Bel-Air France",
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact6 = Contact.create!(name: "Dr. M??lusine Enfaillite",
                user_id: user1.id,
                address: "116 Av. Jean Monnet 13127 Vitrolles France",
                phone_number: "0491654321",
                statut: 'V??t??rinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )
contact7 = Contact.create!(name: "La F??line Meyreuillaise",
                user_id: user1.id,
                address: '23 Av. Jean Petit 13590 Meyreuil France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact8 = Contact.create!(name: "Dr. Sandra Pathie",
                user_id: user3.id,
                address: "1 Cr Lieutaud, 13006 Marseille France",
                phone_number: "0491654321",
                statut: 'V??t??rinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )

contact9 = Contact.create!(name: "Carapatience et Hamsterville",
                user_id: user2.id,
                address: 'Chemin Sabliere 13720 Belcod??ne France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact10 = Contact.create!(name: "Dr. Sacha Rivari",
                user_id: user1.id,
                address: "7 Boulevard Etienne Boyer 13530 Trets France",
                phone_number: "0491654321",
                statut: 'V??t??rinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )
contact11 = Contact.create!(name: "Coeur d'??cailles",
                user_id: user2.id,
                address: '7 Avenue du Mar??chal Ney 13011 Marseille France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact12 = Contact.create!(name: "Dr. Natacha Pau",
                user_id: user1.id,
                address: "35 Chemin des Bouscauds 13480 Cabri??s France",
                phone_number: "0491654321",
                statut: 'V??t??rinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )

puts "Contacts created"

puts "creating Contact_categories"
ContactCategory.create!(category_id: cat3.id, contact_id: contact1.id)
ContactCategory.create!(category_id: cat2.id, contact_id: contact2.id)
ContactCategory.create!(category_id: cat9.id, contact_id: contact2.id)
ContactCategory.create!(category_id: cat6.id, contact_id: contact2.id)
ContactCategory.create!(category_id: cat8.id, contact_id: contact3.id)
ContactCategory.create!(category_id: cat3.id, contact_id: contact3.id)
ContactCategory.create!(category_id: cat4.id, contact_id: contact4.id)
ContactCategory.create!(category_id: cat5.id, contact_id: contact4.id)
ContactCategory.create!(category_id: cat1.id, contact_id: contact5.id)
ContactCategory.create!(category_id: cat2.id, contact_id: contact5.id)
ContactCategory.create!(category_id: cat1.id, contact_id: contact6.id)
ContactCategory.create!(category_id: cat3.id, contact_id: contact6.id)
ContactCategory.create!(category_id: cat4.id, contact_id: contact7.id)
ContactCategory.create!(category_id: cat5.id, contact_id: contact7.id)
ContactCategory.create!(category_id: cat8.id, contact_id: contact8.id)
ContactCategory.create!(category_id: cat1.id, contact_id: contact8.id)
ContactCategory.create!(category_id: cat2.id, contact_id: contact9.id)
ContactCategory.create!(category_id: cat6.id, contact_id: contact9.id)
ContactCategory.create!(category_id: cat6.id, contact_id: contact10.id)
ContactCategory.create!(category_id: cat7.id, contact_id: contact10.id)
ContactCategory.create!(category_id: cat9.id, contact_id: contact11.id)
ContactCategory.create!(category_id: cat3.id, contact_id: contact11.id)
ContactCategory.create!(category_id: cat1.id, contact_id: contact12.id)
ContactCategory.create!(category_id: cat2.id, contact_id: contact12.id)
ContactCategory.create!(category_id: cat3.id, contact_id: contact12.id)
puts "All finished !"
