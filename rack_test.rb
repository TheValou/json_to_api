require 'json'
require 'rack'
require 'rack/server'

class HelloWorld
  def response
    [200, {}, 'Hello World']
  end
end


class HelloWorldApp
  def self.call(env)
    HelloWorld.new.response
  end
end


file = File.read('data.json')
data_hash = JSON.parse(file)
p data_hash['movies']