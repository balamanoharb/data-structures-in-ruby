$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "data_store"
require "simplecov"
require "codecov"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [
    # SimpleCov::Formatter::Console,
    # Want a nice code coverage website? Uncomment this next line!
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Codecov
  ]
)
SimpleCov.start

require "minitest/autorun"