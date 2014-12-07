require 'spec_helper'
require 'armory'
include Armory
# Test character responses
describe 'Character API' do
  describe 'Armory::character GET /armory/character' do
    it 'returns character information from armory method' do
        #locale is US by default
        response = Armory.character('experience', 'burning-legion')
        expect(response['name']).to eq("Experience")
    end
  end
  describe 'Armory::guild GET /armory/guild' do
    it 'returns guild information from armory method' do
        response = Armory.guild('HC', 'burning-legion')
        expect(response['name']).to eq("HC")
    end
  end
end
