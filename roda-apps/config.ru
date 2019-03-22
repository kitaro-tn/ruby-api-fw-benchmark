require "roda"
require 'json'

class App < Roda
  plugin :json

  route do |r|
    r.on "accounts" do
      r.get do
        accounts = ::JSON.parse(File.read("./data/sample_100.json"))
        accounts
      end
    end
  end
end

run App.freeze.app
