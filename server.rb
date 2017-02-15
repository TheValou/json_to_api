require 'json'

class Server
  def call(env)
    file = File.read('data.json')
    datas = JSON.parse(file)

    request = Rack::Request.new env
    p request.params.keys

    if request.params[''] == '/movies'
      [200, {"Content-Type" => "text/json"}, [file]]
    end

    [200, {"Content-Type" => "text/plain"}, ["Hello you ;)"]]

  end
end
