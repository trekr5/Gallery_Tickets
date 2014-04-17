module GalleryTickets

  class Tickets


    def self.create_tickets(name, exhibition_id, entry_at)
    response = HTTParty.post("http://arts-api.herokuapp.com/tickets", body: {ticket: {name: name, exhibition_id: exhibition_id, entry_at: entry_at}})
    puts response

      # returns a list of tickets
      #  @result = HTTParty.post(@url.to_str, :body => {:ticket => {:name => 'Angela', :exhibition_id => 1, :entry_at => '17/4/2014 14:00'}})
      # also returns the same result
      
    JSON.parse response.body
    end 

    def self.delete_tickets(id)
    response = HTTParty.delete("http://arts-api.herokuapp.com/tickets/#{id}")

    end 


  end
end