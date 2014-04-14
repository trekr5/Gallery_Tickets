require 'spec_helper.rb'
require 'httparty'
require 'json'

describe "GalleryTickets::Connect" do
  
  describe '#galleries' do

    it "make request to the right end point" do
      HTTParty.should_receive :get, :with => 'http://arts-api.herokuapp.com/galleries'
      Connect.galleries
      # JSON.parse(response.body)
      # response.code.should eq 200
      # response = Httparty.get('http://arts-api.herokuapp.com/galleries')
      # result = JSON.parse(response.body)
      # Httparty.get("http://arts-api.herokuapp.com/galleries").parsed_response
      end
  
  end
end