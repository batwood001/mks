site = "critics.api.mks.io/restaurants"

def good_restaurants(api)
  require 'rest-client'
  response = RestClient.get(api)
  parsed = JSON.parse(response)
  gooduns = ratings.select{|x| x["rating"].to_i > 8}
  gooduns.each do |x|
    puts "#{x["rating"]} - #{x["venue"]}"
  end
end

def includes_austin(api)
  require 'rest-client'
  response = RestClient.get(api)
  parsed = JSON.parse(response)
  parsed.each do |x|
    if x["venue"].match(/(?i)austin/)
      puts x["venue"]
    end
  end
end

site = "critics.api.mks.io/movie-genres"

def most_ratings(api)
  require 'rest-client'
  response = RestClient.get(api)
  parsed = JSON.parse(response)
  genres = []
  parsed.each do |review|
    genres << review["genre"].downcase
  end
  ranks = Hash.new(0)
  genres.each { |genre| ranks[genre] += 1}
  sorted_ranks = ranks.sort_by{|a,b| b}.sort_by{|score| score[1]}.reverse
  puts "#{sorted_ranks[0][0].capitalize} - #{sorted_ranks[0][1]} reviews"
  puts "#{sorted_ranks[1][0].capitalize} - #{sorted_ranks[1][1]} reviews"
  puts "#{sorted_ranks[2][0].capitalize} - #{sorted_ranks[2][1]} reviews"
end

def highest_ratings(api)
  require 'rest-client'
  response = RestClient.get(api)
  parsed = JSON.parse(response)
  
end
