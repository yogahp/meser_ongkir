# frozen_string_literal: true

require_relative '../starter.rb'
require_relative '../api'
require 'json'

module MeserOngkir
  class Starter
    class City < MeserOngkir::Starter
      class << self
        # Get all city
        #
        # @example
        #   MeserOngkir::Starter::City.all
        #
        # @return
        # {
        #   "rajaongkir": {
        #     "query": { ... },
        #     "status": { ... },
        #     "results": { ... }
        #   }
        # }
        def all
          call_api
        end

        # Find city by province ID or city ID
        #
        # @param
        #   params [hash] hash of city ID and/or province ID
        #
        # @example
        #   params = { id: city_id, province: province_id }
        #   MeserOngkir::Starter::City.find_by(params)
        #
        # @return
        # {
        #   "rajaongkir": {
        #     "query": { ... },
        #     "status": { ... },
        #     "results": { ... }
        #   }
        # }
        def find_by(params)
          call_api(params)
        end

        private

        def call_api(params = nil)
          response = MeserOngkir::Api.new(account_type, main_path, params)
          JSON.parse response.read_body
        end

        def main_path
          :city
        end
      end
    end
  end
end
