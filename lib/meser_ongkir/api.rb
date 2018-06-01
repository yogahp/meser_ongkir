require 'uri'
require 'net/http'
require 'openssl'

module MeserOngkir
  class Api
    def initialize(account_type, main_path, params)
      @account_type = account_type
      @main_path = main_path
      @params = params
    end

    def call
      url = URI(api_url)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      url.query = URI.encode_www_form(@params) if @params

      request = Net::HTTP::Get.new(url)
      request['key'] = ENV['MESER_ONGKIR_API_KEY']
      http.request(request)
    end

    def read_body
      call.read_body
    end

    private

    def api_url
      "https://api.rajaongkir.com/#{@account_type}/#{@main_path}"
    end
  end
end
