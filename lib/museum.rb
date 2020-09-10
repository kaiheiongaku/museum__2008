require './lib/exhibit'
require './lib/patron'

class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end
end
