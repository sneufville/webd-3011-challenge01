require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
# pp dog_breeds # pp stands for pretty print.

dog_data = dog_breeds['message']
dog_data.each do |dog, list_data|
  puts "* #{dog}"
  list_data.each do |sub_breed|
    puts "\t* #{sub_breed}"
  end
end
