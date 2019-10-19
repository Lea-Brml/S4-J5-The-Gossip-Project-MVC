
require_relative 'view'

require 'json'
require 'csv'



class Controller

  attr_accessor :gossip

  def initialise

    @view = View.new

  end

  def create_gossip

    choice = @view.create_gossip
    choice.each do |key, value|
    my_gossip = Gossip.new(key, value) #=> Crée une instance de potin, sauvergardée juste dans cette variable
    my_gossip.save_csv #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV
    end

  end


end
