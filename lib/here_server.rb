require 'here_server/version'
require 'webrick'

module HereServer
  def self.run
    server = WEBrick::HTTPServer.new :Port => 1234
    server.mount '/', WEBrick::HTTPServlet::FileHandler, './'
    trap('INT') { server.stop }
    server.start
  end
end
