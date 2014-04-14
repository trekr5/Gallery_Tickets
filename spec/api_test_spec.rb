require 'spec_helper.rb'
require 'httparty'
require 'json'
require './lib/gallery_tickets/connect'

describe GalleryTickets::Connect do
  
  describe '#galleries' do

    let(:response) { double('response', body: '{"galleries": []}')}

    it "make request to the right end point" do
      HTTParty.should_receive(:get, :with => 'http://arts-api.herokuapp.com/galleries').and_return(response)
      GalleryTickets::Connect.galleries
      # JSON.parse(response.body)
      # response.code.should eq 200
      # response = Httparty.get('http://arts-api.herokuapp.com/galleries')
      # result = JSON.parse(response.body)
      # Httparty.get("http://arts-api.herokuapp.com/galleries").parsed_response
    end

    it "lists the galleries" do
      HTTParty.stub(get: response)
      GalleryTickets::Connect.galleries.should eq('galleries' => [])
    end
  end

end