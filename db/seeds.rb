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
            address: '7 avenue du Maréchal Ney 13011 Marseille France',
            admin: false)

  user8 = User.create!(email: 'solennn@solenn.com',
            name: 'Solenn',
            password: 'azerty',
            address: '60 chemin de la Bagasse 13530 Trets France',
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

mesange = Animal.create!(name: "Mésange noire",
              category_id: cat1.id,
              color: "Gris, noir, beige",
              particularity: "Petite",
              description: "<h2>Quand **déplacer** ou **récupérer** une *mésange noire* ?</h2><br>

**1.** Une mésange blessée de manière visible est à la merci des prédateurs. Récupérez-la.<br>
**2.** Une mésange qui semble sonnée et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-la.<br><br>

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
              particularity: "Petit",
              description: "<h2>Quand **déplacer** ou **récupérer** un *moineau friquet* ?</h2><br>

**1.** Un moineau friquet blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un moineau friquet qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *moineau friquet* ?</h2><br>
euvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'am
**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abrener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.
",
              scientific_name: "Passer montanus",
              weight: "19 à 25 g"
              )

photo_moineau = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918791/Moineau_ncaesu.jpg')
moineau.photo.attach(io: photo_moineau, filename: "moineau.jpg", content_type: 'image/jpg')
moineau.save!
puts "moineau created"

renard = Animal.create!(name: "Renard roux",
              category_id: cat3.id,
              color: "Roux, blanc",
              particularity: "Carnivore, dentu",
              description: "<h2>Quand **déplacer** ou **récupérer** un *renard* ?</h2><br>

**1.** Un renard blessé de manière visible est en difficulté. Aidez-le.<br>
**2.** Un renard en errance qui ne s'enfuit pas à votre approche peut avoir subi un choc *ou* être perdu. S'il s'agit d'un juvénile, n'agissez pas et observez. Sa mère n'est peut-être pas loin.<br><br>

<h2>Comment prendre soin d'un *renard* ?</h2><br>

**1.** Contactez en priorité un vétérinaire proche pour obtenir de l'aide. Le renard est un animal sauvage doté de dents puissantes. Même blessé, par peur ou par douleur, il peut vous attaquer.<br>
**2.** Restez en observation le temps qu'un professionnel habilité vienne sur les lieux.<br>
**3.** Si c'est impossible et que l'animal est inconscient, munissez-vous d'une caisse de transport pour canidé et, en l'enroulant dans une couverture, récupérez-le pour l'y glisser.<br>",
              scientific_name: "Vulpes vulpes",
              weight: "6 à 10 kg"
              )

photo_renard = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918844/Renard_udfcvc.jpg')
renard.photo.attach(io: photo_renard, filename: "renard.jpg", content_type: 'image/jpg')
renard.save!
puts "renard created"

grenouille = Animal.create!(name: "Grenouille verte",
              category_id: cat3.id,
              color: "Vert",
              particularity: "Bruyante",
              description: "<h2>Quand **déplacer** ou **récupérer** une *grenouille verte* ?</h2><br>

**1.** Une grenouille verte blessée de manière visible est en difficulté. Récupérez-la.<br>
**2.** Une grenouille verte au bord d'une route passante est en danger. Déplacez-la.<br><br>

<h2>Comment prendre soin d'un *grenouille verte* ?</h2><br>

**1.** Les batraciens peuvent être urticants. Ne déplacez pas une grenouille verte à mains nues.<br>
**2.** Poussez-la délicatement avec un objet non susceptible de la blesser pour la diriger vers un carton ou une boîte.<br>
**3.** Si elle est blessée, fermez le carton, faites des petits trous pour la respiration et emmenez-la chez un professionnel.<br>
**4.** Si elle n'est pas blessée, faites-la uniquement traverser la voie et approchez-la d'un point d'eau.<br>",
              scientific_name: "Pelophylax kl. esculentus",
              weight: "10 à 30 g"
              )

photo_grenouille = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919025/Grenouille_ix6rqe.jpg')
grenouille.photo.attach(io: photo_grenouille, filename: "grenouille.jpg", content_type: 'image/jpg')
grenouille.save!
puts "grenouille created"

couleuvre = Animal.create!(name: "Couleuvre helvétique",
              category_id: cat9.id,
              color: "Vert, gris, brun",
              particularity: "Longue",
              description: "<h2>Quand **déplacer** ou **récupérer** une *couleur helvétique* ?</h2><br>

Les couleuvres sont inoffensives.Ne les déplacez pas.",
              scientific_name: "Natrix helvetica",
              weight: "80 à 100 g"
              )

photo_couleuvre = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919101/Couleuvre001_iollq8.jpg')
couleuvre.photo.attach(io: photo_couleuvre, filename: "couleuvre.jpg", content_type: 'image/jpg')
couleuvre.save!
puts "couleuvre created"

lezard = Animal.create!(name: "Lézard à deux raies",
              category_id: cat9.id,
              color: "Vert, jaune",
              particularity: "Timide",
              description: "<h2>Quand **déplacer** ou **récupérer** un *lézard à deux raies* ?</h2><br>

**1.** Un lézard vert blessé de manière visible est en difficulté. Récupérez-le.<br>
**2.** Un lézard vert au bord d'une route passante est en danger. Déplacez-le.<br><br>

<h2>Comment prendre soin d'un *lézard à deux raies* ?</h2><br>

**1.** Ne l'attrapez pas par la queue. Elle pourrait se détacher.<br>
**2.** Poussez-le délicatement avec un objet non susceptible de le blesser pour le diriger vers un carton ou une boîte.<br>
**3.** S'il est blessée, fermez le carton, faites des petits trous pour la respiration et emmenez-le chez un professionnel.<br>
**4.** S'il n'est pas blessé, faites-le uniquement traverser la voie et approchez-le d'un point rocheux.<br>",
              scientific_name: "Lacerta bilineata bilineata",
              weight: "80 à 100 g"
              )

photo_lezard = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919137/L%C3%A9zard001_ygyfmf.jpg')
lezard.photo.attach(io: photo_lezard, filename: "lezard.jpg", content_type: 'image/jpg')
lezard.save!
puts "lézard created"

lezard2 = Animal.create!(name: "Lézard des murailles",
              category_id: cat9.id,
              color: "Brun, beige",
              particularity: "Discret",
              description: "<h2>Quand **déplacer** ou **récupérer** une *couleur helvétique* ?</h2><br>

**1.** Un lézard vert blessé de manière visible est en difficulté. Récupérez-le.<br>
**2.** Un lézard vert au bord d'une route passante est en danger. Déplacez-le.<br><br>

<h2>Comment prendre soin d'un *lézard des murailles* ?</h2><br>

**1.** Ne l'attrapez pas par la queue. Elle pourrait se détacher.<br>
**2.** Poussez-le délicatement avec un objet non susceptible de le blesser pour le diriger vers un carton ou une boîte.<br>
**3.** S'il est blessée, fermez le carton, faites des petits trous pour la respiration et emmenez-le chez un professionnel.<br>
**4.** S'il n'est pas blessé, faites-le uniquement traverser la voie et approchez-le d'un point rocheux.<br>",
              scientific_name: "Lacerta bilineata bilineata",
              weight: "80 à 100 g"
              )

photo_lezard2 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919170/L%C3%A9zard002_olausa.jpg')
lezard2.photo.attach(io: photo_lezard2, filename: "lezard2.jpg", content_type: 'image/jpg')
lezard2.save!
puts "lézard created"

couleuvre2 = Animal.create!(name: "Couleuvre verte et jaune",
              category_id: cat9.id,
              color: "Verte, jaune",
              particularity: "Longue",
              description: "<h2>Quand **déplacer** ou **récupérer** une *couleuvre verte et jaune* ?</h2><br>

Les couleuvres sont inoffensives. Ne les déplacez pas.",
              scientific_name: "Hierophis viridiflavus",
              weight: "80 à 100 g"
              )

photo_couleuvre2 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919198/Couleuvre002_ejffqh.jpg')
couleuvre2.photo.attach(io: photo_couleuvre2, filename: "couleuvre2.jpg", content_type: 'image/jpg')
couleuvre2.save!
puts "couleuvre created"

couleuvre3 = Animal.create!(name: "Couleuvre vipérine",
              category_id: cat9.id,
              color: "Brun, rouge",
              particularity: "Longue",
              description: "<h2>Quand **déplacer** ou **récupérer** une *couleuvre verte et jaune* ?</h2><br>

Les couleuvres sont inoffensives. Ne les déplacez pas.",
              scientific_name: "Natrix maura",
              weight: "80 à 100 g"
              )

photo_couleuvre3 = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919238/Couleuvre003_dmbrum.jpg')
couleuvre3.photo.attach(io: photo_couleuvre3, filename: "couleuvre3.jpg", content_type: 'image/jpg')
couleuvre3.save!
puts "couleuvre created"

fouine = Animal.create!(name: "Fouine",
              category_id: cat3.id,
              color: "Brun, blanc, noir",
              particularity: "Poilue, poilu",
              description: "<h2>Quand **déplacer** ou **récupérer** une *fouine* ?</h2><br>

**1.** Un fouine blessée de manière visible est en difficulté. Aidez-la.<br>
**2.** Une fouine en errance qui ne s'enfuit pas à votre approche peut avoir subi un choc *ou* être perdue. S'il s'agit d'une juvénile, n'agissez pas et observez. Sa mère n'est peut-être pas loin.<br><br>

<h2>Comment prendre soin d'une *fouine* ?</h2><br>

**1.** Contactez en priorité un vétérinaire proche pour obtenir de l'aide. La fouine est un animal sauvage doté de dents puissantes. Même blessée, par peur ou par douleur, elle peut vous attaquer.<br>
**2.** Restez en observation le temps qu'un professionnel habilité vienne sur les lieux.<br>
**3.** Si c'est impossible et que l'animal est inconscient, munissez-vous d'une caisse de transport pour canidé et, en l'enroulant dans une couverture, récupérez-le pour l'y glisser.<br>",
              scientific_name: "Martes foina",
              weight: "1,3 - 2,3 kg"
              )

photo_fouine = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919269/Fouine_lxbjj3.jpg')
fouine.photo.attach(io: photo_fouine, filename: "fouine.jpg", content_type: 'image/jpg')
fouine.save!
puts "fouine created"

chat = Animal.create!(name: "Chat",
              category_id: cat4.id,
              color: "Tigré",
              particularity: "Majestueuse, déesse, impératrice, rusée, charmante, intelligente, déterminée, gourmande",
              description: "<h2>Quand **déplacer** ou **récupérer** un *chat* ?</h2><br>

**1.** Un chat blessé de manière visible est en difficulté. Aidez-le.<br>
**2.** Une chat qui semble perdu, hagard, peut-être aidé.<br><br>

<h2>Comment prendre soin d'un *chat* ?</h2><br>

**1.** Tentez d'attraper le chat, soit à l'aide d'une cage trappe fournie par un vétérinaire soit en l'attirant avec de la nourriture.<br>
**2.** Gratuitement, les vétérinaires peuvent scanner la puce de l'animal, s'il est pucé, ou vérifier la présence d'un tatouage.<br>
**3.** Partager ses photos sur les réseaux sociaux.<br>",
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
              particularity: "Mignon, lunaire, têtu, affectueux, sympathique, doux, poilu, gentil",
              description: "<h2>Quand **déplacer** ou **récupérer** un *chat* ?</h2><br>

**1.** Un chat blessé de manière visible est en difficulté. Aidez-le.<br>
**2.** Un chat qui semble perdu, hagard, peut-être aidé.<br><br>

<h2>Comment prendre soin d'un *chat* ?</h2><br>

**1.** Tentez d'attraper le chat, soit à l'aide d'une cage trappe fournie par un vétérinaire soit en l'attirant avec de la nourriture.<br>
**2.** Gratuitement, les vétérinaires peuvent scanner la puce de l'animal, s'il est pucé, ou vérifier la présence d'un tatouage.<br>
**3.** Partager ses photos sur les réseaux sociaux.<br>",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *chien* ?</h2><br>

**1.** Un chien blessé de manière visible est en difficulté. Aidez-le.<br>
**2.** Un chien qui semble perdu, hagard, peut-être aidé.<br><br>

<h2>Comment prendre soin d'un *chien* ?</h2><br>

**1.** Tentez d'attraper le chien, soit à l'aide d'une cage trappe fournie par un vétérinaire soit en l'attirant avec de la nourriture.<br>
**2.** Gratuitement, les vétérinaires peuvent scanner la puce de l'animal, s'il est pucé, ou vérifier la présence d'un tatouage.<br>
**3.** Partager ses photos sur les réseaux sociaux.<br>",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *loir* ?</h2><br>

**1.** Un loir blessé de manière visible est en difficulté. Aidez-le.<br>
**2.** Un loir en errance qui ne s'enfuit pas à votre approche peut avoir subi un choc *ou* être perdu. S'il s'agit d'une juvénile, n'agissez pas et observez. Sa mère n'est peut-être pas loin.<br>

<h2>Comment prendre soin d'un *loir* ?</h2><br>

**1.** Contactez en priorité un vétérinaire proche pour obtenir de l'aide. Le loir est un animal sauvage  et craintif.
**2.** Poussez-le délicatement avec un objet non susceptible de le blesser pour le diriger vers un carton ou une boîte.<br>
**3.** S'il est blessée, fermez le carton, faites des petits trous pour la respiration et emmenez-le chez un professionnel.<br>",
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
              description: "<h2>Quand **déplacer** ou **récupérer** une *chauve-souris* ?</h2><br>

**1.** Une chauve-souris blessée de manière visible est en difficulté. Aidez-la.<br>
**2.** Une chauve-souris rentrée dans votre maison et volant frénétiquement est en danger. Aidez-la.<br>

<h2>Comment prendre soin d'une *chauve-souris * ?</h2><br>

**1.** Pour faire sortir une chauve-souris de chez soi, il faut ouvrir toutes les fenêtres de la pièce donnant vers l'extérieur, éteindre les lumières et attendre dix minutes.
**2.** Si elle est blessée, contactez immédiatemment un professionnel. On ne peut ni détenir ni déplacer une chauve-souris.<br>
**3.** Attention, ne la touchez pas, elle peut être porteuse de la rage.<br>",
              scientific_name: "Chiroptera",
              weight: "4 - 45g"
              )

photo_chauvesouris = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919551/Chauve-souris_j4itdb.jpg')
chauvesouris.photo.attach(io: photo_chauvesouris, filename: "chauvesouris.jpg", content_type: 'image/jpg')
chauvesouris.save!
puts "chauve-souris created"

piegrieche = Animal.create!(name: "Pie-grièche écorcheur",
              category_id: cat1.id,
              color: "Beige, rouge, blanc, noir, gris",
              particularity: "Petite, petit, insectivore",
              description: "<h2>Quand **déplacer** ou **récupérer** une *pie-grièche écorcheur* ?</h2><br>

**1.** Une pie-grièche écorcheur blessée de manière visible est à la merci des prédateurs. Récupérez-la.<br>
**2.** Une pie-grièche écorcheur qui semble sonnée et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-la.<br><br>

<h2>Comment prendre soin d'une *pie-grièche écorcheur* ?</h2><br>

**1.** Recouvrez-la d'un linge pour la mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-la ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-la avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.",
              scientific_name: "Lanius collurio",
              weight: "23 - 40g"
              )

photo_piegrieche = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919621/Pie_gri%C3%A8che_bknrke.jpg')
piegrieche.photo.attach(io: photo_piegrieche, filename: "piegrieche.jpg", content_type: 'image/jpg')
piegrieche.save!
puts "pie-grièche écorcheur created"

guepier = Animal.create!(name: "Guêpier d'Europe",
              category_id: cat1.id,
              color: "Bleu, jaune, brun, roux, vert",
              particularity: "Petit, insectivore",
              description: "<h2>Quand **déplacer** ou **récupérer** un *guêpier d'Europe* ?</h2><br>

**1.** Un guêpier d'Europe blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un guêpier d'Europe qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *guêpier d'Europe* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-la avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
              scientific_name: "Merops apiaster",
              weight: "50 - 65g"
              )

photo_guepier = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919657/Gu%C3%AApier_zma0yg.jpg')
guepier.photo.attach(io: photo_guepier, filename: "guepier.jpg", content_type: 'image/jpg')
guepier.save!
puts "guêpier d'Europe created"

pie = Animal.create!(name: "Pie",
              category_id: cat1.id,
              color: "Noir, blanc, bleu",
              particularity: "Moyenne, moyen, bavarde",
              description: "<h2>Quand **déplacer** ou **récupérer** une *pie* ?</h2><br>

**1.** Une pie blessée de manière visible est à la merci des prédateurs. Récupérez-la.<br>
**2.** Une pie qui semble sonnée et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-la.<br><br>

<h2>Comment prendre soin d'une *pie* ?</h2><br>

**1.** Recouvrez-la d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-la ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-la avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de la noyer.",
              scientific_name: "Pica pica",
              weight: "145 - 210g"
              )

photo_pie = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641919706/Pie_upfzyy.jpg')
pie.photo.attach(io: photo_pie, filename: "pie.jpg", content_type: 'image/jpg')
pie.save!
puts "pie"

herisson = Animal.create!(name: "Hérisson",
              category_id: cat3.id,
              color: "Marron, brun, beige",
              particularity: "Petit, piquants, pique, nocturne",
              note: "Attention, un hérisson peut avoir des puces",
              description: "<h2>Quand un **hérisson** est-il en danger ?</h2><br>

**1.** S'il est vu de jour.<br>
**2.** S'il est apathique.<br>
**3.** S'il est vu en plein hiver et qu'il est de petite taille.<br><br>

Pour déterminer comment vous en occuper, lisez ce qui suit ou, si vous **manquez de temps**, rendez-vous aux **contacts utiles** pour vous en remettre à un professionnel.<br><br>

<h2>Quand **déplacer** ou **récupérer** un *hérisson* ?</h2><br>

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

photo_herisson = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641918597/h%C3%A9risson_afixqa.webp')
herisson.photo.attach(io: photo_herisson, filename: "herisson.jpg", content_type: 'image/jpg')
herisson.save!
puts "herisson created"

ane = Animal.create!(name: "Ane corse",
              category_id: cat3.id,
              color: "Gris",
              particularity: "Oreilles, gourmand",
              description: "<h2>Quand **déplacer** ou **récupérer** un *âne* ?</h2><br>

**1.** Si l'âne veut vous suivre et être déplacé, il en prendra seul la décision.<br>
**2.** S'il a l'air perdu, indiquez-lui son chemin.<br><br>

<h2>Comment prendre soin d'un *âne* ?</h2><br>

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
              description: "<h2>Quand **déplacer** ou **récupérer** un *pigeon* ?</h2><br>

**1.** Un pigeon blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un pigeon qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *pigeon* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *pigeon* ?</h2><br>

**1.** Un pigeon blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un pigeon qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *pigeon* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *pigeon* ?</h2><br>

**1.** Un pigeon blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un pigeon qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *pigeon* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *corbeau* ?</h2><br>

**1.** Un corbeau blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un corbeau qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *corbeau* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** une *corneille* ?</h2><br>

**1.** Une corneille blessée de manière visible est à la merci des prédateurs. Récupérez-la.<br>
**2.** Une corneille qui semble sonnée et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-la.<br><br>

<h2>Comment prendre soin d'une *corneille* ?</h2><br>

**1.** Recouvrez-la d'un linge pour la mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *choucas* ?</h2><br>

**1.** Un choucas blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un choucas qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *choucas* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *martinet* ?</h2><br>

**1.** Un martinet blessé de manière visible est à la merci des prédateurs. Récupérez-le.<br>
**2.** Un martinet qui semble sonné et ne s'envole pas à votre approche a probablement subi un choc. Récupérez-le.<br><br>

<h2>Comment prendre soin d'un *martinet* ?</h2><br>

**1.** Recouvrez-le d'un linge pour le mettre dans le noir et l'apaiser. N'obstruez pas son bec.<br>
**2.** Sauf en cas de blessure à cet endroit, maintenez ses ailes le long de son corps.<br>
**3.** Placez-le ensuite dans un carton percé de trous pour la respiration. Otez le linge et fermez le dessus de la boîte pour maintenir l'obscurité.<br>
**4.** Ne nourrissez pas et n'abreuvez pas l'oiseau, sauf si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire.<br>
**5.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, nourrissez-le avec du haché de bœuf ou des croquettes humides.<br>
**6.** Si vous ne pouvez pas l'amener dans les 12h chez un vétérinaire, proposez de l'eau avec une toute petite seringue, goutte-à-goutte, sur le bout du bec sur le côté. Evitez d'en donner trop et de faire couler dans les narines, au risque de le noyer.",
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
              description: "<h2>Quand **déplacer** ou **récupérer** un *martinet* ?</h2><br>

**1.** Une tortue à l'état naturel a de fortes chances de s'être échappée de chez ses propriétaires. Récupérez-la.<br>
**2.** Les vétérinaires peuvent vérifier si une tortue est pucée et appartient à quelqu'un.<br><br>

<h2>Comment prendre soin d'une *tortue* ?</h2><br>

**1.** Contactez un professionnel compétent pour déterminer s'il s'agit d'une tortue terrestre ou aquatique.<br>
**2.** Mettez-la dans un carton le temps de la transporter.",
              scientific_name: "Testudo hermanni",
              weight: "700g - 1kg"
              )

photo_tortue = URI.open('https://res.cloudinary.com/dzmyhcemr/image/upload/v1641996179/Tortue_d_Hermann_nmncyz.jpg')
tortue.photo.attach(io: photo_tortue, filename: "tortue.jpg", content_type: 'image/jpg')
tortue.save!
puts "tortue"

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
                statut: 'Vétérinaire',
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
                statut: 'Vétérinaire',
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

contact6 = Contact.create!(name: "Dr. Mélusine Enfaillite",
                user_id: user1.id,
                address: "116 Av. Jean Monnet 13127 Vitrolles France",
                phone_number: "0491654321",
                statut: 'Vétérinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )
contact7 = Contact.create!(name: "La Féline Meyreuillaise",
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
                statut: 'Vétérinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )

contact9 = Contact.create!(name: "Carapatience et Hamsterville",
                user_id: user2.id,
                address: 'Chemin Sabliere 13720 Belcodène France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact10 = Contact.create!(name: "Dr. Sacha Rivari",
                user_id: user1.id,
                address: "7 Boulevard Etienne Boyer 13530 Trets France",
                phone_number: "0491654321",
                statut: 'Vétérinaire',
                latitude: 43.2866521,
                longitude: 5.3584289
                )
contact11 = Contact.create!(name: "Coeur d'écailles",
                user_id: user2.id,
                address: '7 Avenue du Maréchal Ney 13011 Marseille France',
                phone_number: "0491456789",
                statut: 'Association',
                latitude: 43.28769302368164,
                longitude: 5.382781028747559
                )

contact12 = Contact.create!(name: "Dr. Natacha Pau",
                user_id: user1.id,
                address: "35 Chemin des Bouscauds 13480 Cabriès France",
                phone_number: "0491654321",
                statut: 'Vétérinaire',
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
