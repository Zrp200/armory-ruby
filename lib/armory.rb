require 'json'

$LOAD_PATH.unshift(File.dirname(__FILE__))

module Armory
    #default parameters
    @locale = 'us'

    def self.character(name, realm, locale = @locale)
        #set default locale to what is passed into the method
        @local = locale
        host = locale + '.battle.net'
        # URL = Host + "/api/wow/character/" + Realm + "/" + CharacterName
        uri = URI('http://' + host + '/api/wow/character/' + realm + '/' + name)
        response = Net::HTTP.get_response(uri)
        # Return ruby object parsed from json
        json = JSON.parse(response.body)
        return json
    end

    def self.guild(name, realm, locale = @locale)
        @locale = locale
        host = locale + '.battle.net'
        # Host + "/api/wow/guild/" + Realm + "/" + GuildName
        uri = URI('http://' + host + '/api/wow/guild/' + realm + '/' + name)
        response = Net::HTTP.get_response(uri)

        json = JSON.parse(response.body)
        return json

    end
end
