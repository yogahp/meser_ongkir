# frozen_string_literal: true

require_relative '../starter.rb'
require_relative '../api'
require 'json'

module MeserOngkir
  class Starter
    class Province < MeserOngkir::Starter
      class << self
        def all
          call_api
        end

        # Returns response of province object
        #
        # ==== Params
        #   id = Province ID
        #
        # ==== Examples
        #   MeserOngkir::Starter::Province.find(1)
        def find(id)
          call_api(id: id)
        end

        private

        def call_api(params = nil)
          response = MeserOngkir::Api.new(account_type, main_path, params)
          JSON.parse response.read_body
        end

        def main_path
          :province
        end
      end
    end
  end
end
