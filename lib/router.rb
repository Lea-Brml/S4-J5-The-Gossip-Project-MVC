require_relative 'controller'

class Router

  attr_accessor :controller

  def initialize                              #On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"

    @controller = Controller.new

  end


  def perform

      puts "Bienvenu sur The Gossip Project bitchiz !"

      while true

          puts "Que désires-tu faire jeune Moussaillon ?"
          puts "1 - Je souhaites créer un Gossip bitchiz."
          puts "2 - Je souhaites quitter ton app de noob."
          choix = gets.chomp.to_i

          case choix
            when 1
            puts "Ah ouai. T'es comme ça. Tu souhaites créer un Gossip trakil. Et bien va donc jeune Moussaillon."
            @controller.create_gossip
            when 2
            puts "A tanto brow. Stay tuned."
            break                               #break permet de sortir de la boucle while
          else
            puts "Hé oh. T'as fumé ? Ce choix n'exite pas brow. Alors mets un choix valide, et n'oublie pas de dire Bonjour."
          end
      end

    end

end
