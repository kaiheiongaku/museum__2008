require './lib/exhibit'
require './lib/patron'
require './lib/museum'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest < Minitest::Test

  def test_it_exists_and_has_attributes
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, dmns
    assert_equal "Denver Museum of Nature and Science", dmns.name
    assert_equal [], dmns.exhibits
  end


end
