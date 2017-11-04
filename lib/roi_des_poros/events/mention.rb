module RoiDesPoros
  
  module Events
    # Responds on mention.
    module Mention
      extend Discordrb::EventContainer
      mention do |event|

        event.respond("Roi des Poros v#{VERSION} à votre service!")
        event.respond("`#{CONFIG.prefix}help` pour la liste des commandes :desktop:")
      end
    end
  end
end