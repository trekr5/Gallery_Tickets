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

  describe '#single_gallery' do

    let(:response) { double('response', body: '{"name": "Hayward"}')}

    it "make request to the right end point" do
      HTTParty.should_receive(:get, :with => 'http://arts-api.herokuapp.com/galleries/1').and_return(response)
      GalleryTickets::Connect.single_gallery
    end

    it "returns information for a specific gallery" do
      HTTParty.stub(get: response)
      GalleryTickets::Connect.single_gallery.should eq('name' => "Hayward")
    end
  end

  describe '#exhibitions' do

    let(:response) { double('response', body: '{"name": "Futurism And You"}')}

    it "make request to the right end point" do
      HTTParty.should_receive(:get, :with => 'http://arts-api.herokuapp.com/galleries/1/exhibitions').and_return(response)
      GalleryTickets::Connect.exhibitions
    end

    it "lists the exhibitions" do
      HTTParty.stub(get: response)
      GalleryTickets::Connect.exhibitions.should eq('name' => "Futurism And You")
    end
  end

end