require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  
  def initialize(url)  
    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  end
  
  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    requesters = GetRequester.new.get_response_body
puts requesters
  end
end
  
    