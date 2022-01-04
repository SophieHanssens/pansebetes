require 'open-uri'
require 'nokogiri'

def getAnimalPage(animal_url)
  url = animal_url
  animal_file = URI.open(url).read
  animal_doc = Nokogiri::HTML(animal_file)

  a_element = animal_doc.search('.animal-facts')
    if a_element.search('dd')[6] != nil
      p a_element.search('dd')[6].text.strip
    else
      p ''
    end
end


url = "https://a-z-animals.com/animals/location/europe/france/"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.card').each do |element|
  animal_url = element.search('a')[0]['href']

  getAnimalPage(animal_url)
end
