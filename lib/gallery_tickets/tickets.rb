module GalleryTickets

  class Tickets


    def self.create_tickets(name, exhibition_id, entry_at)
    response = HTTParty.post("http://arts-api.herokuapp.com/tickets", body: {ticket: {name: name, exhibition_id: exhibition_id, entry_at: entry_at}})
    puts response

      # returns a list of tickets
    JSON.parse response.body
    end 

    def self.delete_tickets(id)
    response = HTTParty.delete("http://arts-api.herokuapp.com/tickets/#{id}")

    end 


  end
end