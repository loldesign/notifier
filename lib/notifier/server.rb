module Notifier
  class Server
    attr_reader :name, :ip

    def initialize(name, ip)
      @name = name
      @ip = ip
    end

    def is_down?
      `ping -t1 #{@ip} > /dev/null`
      $?.exitstatus != 0
    end
  end
end
