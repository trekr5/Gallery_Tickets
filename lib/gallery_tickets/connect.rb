module GalleryTickets

  class Connect

    def self.galleries
      # opens the connection to the api
    response = HTTParty.get("http://arts-api.herokuapp.com/galleries")
    puts response

      # returns a list of galleries
    JSON.parse response.body
    end 

    def self.single_gallery
      # opens the connection to the api
    response = HTTParty.get("http://arts-api.herokuapp.com/galleries/1")
    puts response

      # returns a list of galleries
    JSON.parse response.body
    end 

    def self.exhibitions
      # opens the connection to the api
    response = HTTParty.get("http://arts-api.herokuapp.com/galleries/1/exhibitions")
    puts response

      # returns a list of galleries
    JSON.parse response.body
    end 

  end
end