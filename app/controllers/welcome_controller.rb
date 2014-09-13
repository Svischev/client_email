class WelcomeController < ApplicationController

	#require 'socket'
	require 'rubygems'
	require 'net/imap'

  def index
  end

  def show_all_emails
  	@imap = Net::IMAP.new('imap.gmail.com', 993, true) # host, port, ssl
  	@imap.login("rwr.hazius@gmail.com", "nbirf1990")
  	@imap.select("INBOX")
		@ans1 = ""
		@mail_ids = @imap.search(["ALL"])
		#mail_ids.each do |message_id|
  		#envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
  		#@ans1 = @ans1 + "#{envelope.from[0].name}: \t#{envelope.subject}\r\n\r\n"
		#end


  	#@s = TCPSocket.open "74.125.143.109", 993
  	#s = TCPSocket.open "www.google.com", 80
  	#s.puts "GET / HTTP/1.1\r\n"
		#s.puts "\r\n"
  	#@ans1 = read_chanel()
  	#write_to_chanel("login rwr.hazius@gmail.com nbirf1990")
  	#@ans2 = read_chanel()
  	#@s.close  
  end

  private
  	def read_chanel()
  		result = ""
  		while line = @s.gets
  			result = result + line.chop  			
			end
			result
  	end

  	def write_to_chanel(p_string)
  		@s.puts("#{p_string}\r\n")
  		@s.puts "\r\n"
  	end

end
