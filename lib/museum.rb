require './lib/exhibit'
require './lib/patron'

class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    patron_interests = []
    patron.interests.each do |interest|
      @exhibits.map do |exhibit|
      if exhibit.name.include?(interest)
        patron_interests << exhibit
        end
      end
    end
    patron_interests
  end
end
