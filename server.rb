#!/usr/bin/ruby

require 'webrick'

root = File.expand_path '.'
server = WEBrick::HTTPServer.new :Port => 8088, :DocumentRoot => root

trap 'INT' do server.shutdown end

server.start
