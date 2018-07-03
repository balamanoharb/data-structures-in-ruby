require "test_helper"

class DataStoreTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DataStore::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
end
