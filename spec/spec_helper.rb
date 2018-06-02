require 'simplecov'
SimpleCov.start

require 'bundler/setup'
require 'meser_ongkir'
require 'meser_ongkir/starter/province'
require 'meser_ongkir/starter/city'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
