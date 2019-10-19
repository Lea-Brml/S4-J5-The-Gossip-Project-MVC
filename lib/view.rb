require 'pry'

class View

  def initialize


  end 


  def create_gossip

    puts "Bonjour, quel est ton petit nom de gossipeur ?"
    @author = gets.chomp

    puts "Re, et maintenant dis moi quel est ton gossip : "
    @content = gets.chomp

    return hash = {@author => @content}

  end

end
