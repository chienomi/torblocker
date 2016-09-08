require "torblocker/version"

module Torblocker
  def self.untrusted?(ip,token)
  	uri = URI.parse('http://localhost:3000/v1?ip=<%= ip %>')
	http = Net::HTTP.new(uri.host, uri.port)
	request = Net::HTTP::Get.new(uri)
	request['authorization'] = "Token token=<%=token%>"
	response = http.request(request)
	response.body == 1 || response.body == "1"
  end

  def self.trusted?(ip,token)
  	uri = URI.parse('http://localhost:3000/v1?ip=<%= ip %>')
	http = Net::HTTP.new(uri.host, uri.port)
	request = Net::HTTP::Get.new(uri)
	request['authorization'] = "Token token=<%=token%>"
	response = http.request(request)
	response.body != 1 && response.body != "1"
  end
end
