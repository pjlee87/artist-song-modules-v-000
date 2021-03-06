require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramble.rb'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramble::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

#  def initialize
#    @@songs << self
#  end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

#  def self.reset_all
#    @@songs.clear
#  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end

#  def self.count
#    self.all.count
#  end

  def self.all
    @@songs
  end
end
