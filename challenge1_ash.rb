require 'net/http'
require 'json'

# url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) # Convert JSON data into Ruby data.

ash_tree_count = 0

trees.each do |tree|
  if tree['common_name'].downcase.include? 'ash'
    ash_tree_count += 1
  end
end

puts "Total number of Ash trees: #{ash_tree_count}"
