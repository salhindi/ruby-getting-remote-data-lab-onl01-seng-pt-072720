require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  
  def initialize(url)  
    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  end
  
  def get_response_body
    uri = URI.parse(self)
    response = Net::HTTP.get_response_body(uri)
    response.body
  end
end
  
    