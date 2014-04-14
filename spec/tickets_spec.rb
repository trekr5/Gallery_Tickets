# POST /tickets will create a ticket. You must specify the exhibition_id, the name of the ticketholder, 
# and entry_at in the format '23/5/2014 10:00'.

require 'spec_helper.rb'
require 'httparty'
require 'json'
require './lib/gallery_tickets/tickets'

describe GalleryTickets::Tickets do

  describe '#create_tickets' do

    let(:response) { double('response', body: '{"name": "Angela", "exhibition_id": 1, "entry_at": "23/5/2014 15:00"}')}
    let(:post_data) do
      {body: { ticket: { name: "Angela", exhibition_id: 1, entry_at: "23/5/2014 15:00" }}}
    end

    it "creates ticket" do
      HTTParty.should_receive(:post).with('http://arts-api.herokuapp.com/tickets', post_data).and_return(response)
      GalleryTickets::Tickets.create_tickets("Angela", 1, "23/5/2014 15:00")

    end  

    # HTTParty.post("http://arts-api.herokuapp.com/tickets", body: {ticket: {name: "Angela", exhibition_id: 1, entry_at: "23/5/2014 15:00" }})

  end
end