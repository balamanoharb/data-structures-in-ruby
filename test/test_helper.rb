$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "simplecov"

# module SimpleCov::Configuration
#   def clean_filters
#     @filters = []
#   end
# end

# SimpleCov.configure do
#   clean_filters
#   load_adapter 'test_frameworks'
# end


SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [
    SimpleCov::Formatter::HTMLFormatter
  ]
)
SimpleCov.start

require "dsa"
require "minitest/autorun"

include Containers