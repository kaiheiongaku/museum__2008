require './lib/exhibit'
require './lib/patron'

class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
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

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibit_interest = Hash.new(0)
    @exhibits.each do |exhibit|
      @patrons.each do |patron|
        if patron.interests == exhibit.name
          exhibit_interest[exhibit] << patron
        end
      end
    end
    exhibit_interest
  end


end
