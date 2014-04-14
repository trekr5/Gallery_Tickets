module GalleryTickets

  class Connect

    def self.galleries
    response = HTTParty.get("http://arts-api.herokuapp.com/galleries&format=json")
    puts response
    JSON.parse response.body
    end 

  end
end