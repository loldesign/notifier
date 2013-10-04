module Notifier
  module Dock
    extend self

    def list_servers
      @servers ||= read_json.inject([]) do |list, json|
        list.push Server.new(json['server_name'], json['server_ip'])
      end
    end

    private

    def read_json
      file = "#{ENV['HOME']}/.notifier.json"
      json = open(file).read
      JSON.parse(json)
    end
  end
end
