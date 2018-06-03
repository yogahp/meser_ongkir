# frozen_string_literal: true

require_relative '../starter.rb'
require_relative '../api'
require 'json'

module MeserOngkir
  class Starter
    # Class for get province using starter account
    class Province < MeserOngkir::Starter
      class << self
        # Get all province
        #
        # @example
        #   MeserOngkir::Starter::Province.all
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

        # Find province by province ID
        #
        # @param
        #   id [integer] Province ID
        #
        # @example
        #   MeserOngkir::Starter::Province.find(id)
        #
        # @return
        # {
        #   "rajaongkir": {
        #     "query": { ... },
        #     "status": { ... },
        #     "results": { ... }
        #   }
        # }
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
