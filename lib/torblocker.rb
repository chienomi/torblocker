require "torblocker/version"

module Torblocker
  def self.untrusted?(ip,token)
  	uri = URI.parse('https://torblocker.com/v1?ip=' + ip.to_s)
	http = Net::HTTP.new(uri.host, uri.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	request = Net::HTTP::Get.new(uri)
	request['authorization'] = "Token token=" + token.to_s
	response = http.request(request)
	response.body == 1 || response.body == "1"
  end

  def self.trusted?(ip,token)
  	uri = URI.parse('http://torblocker.com/v1?ip=' + ip.to_s)
	http = Net::HTTP.new(uri.host, uri.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	request = Net::HTTP::Get.new(uri)
	request['authorization'] = "Token token=" + token.to_s
	response = http.request(request)
	response.body != 1 && response.body != "1"
  end
end
