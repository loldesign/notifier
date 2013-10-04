module Notifier
  module Growl
    extend self

    def notify(server)
      GNTP.notify({
        app_name: "LolNotifier",
        title:    "#{server.name} is down!",
        text:     "Please verify the server #{server.ip}",
        sticky:   true
      })
    end
  end
end
