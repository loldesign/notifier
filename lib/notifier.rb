require 'rubygems'
require 'json'
require 'ruby_gntp'

require 'notifier/server'
require 'notifier/dock'
require 'notifier/growl'

module Notifier
  extend self

  def diagnostic_servers
    Dock.list_servers.each do |server|
      Growl.notify(server) if server.is_down?
    end
  end
end
