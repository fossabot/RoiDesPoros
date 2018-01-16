module RoiDesPoros
  module Events
    # Say welcome to new users
    module JoinMessage
      extend Discordrb::EventContainer
      member_join do |event|
        event.server.text_channels.select{ |channel| channel.id == CONFIG.welcome_channel }[0].send_message("Hop hop, on a un nouveau!  \nBienvenue à <@#{event.member.id}> <:poroblush:371719480146919425>")
      end
    end

    module JoinPM
      extend Discordrb::EventContainer
      
      member_join do |event|
        event.user.pm("Bienvenue sur le discord de ZelEnjoy! ✌️\n Ici c'est tranquille, on est là pour rigoler entre potes ☺️\n\n __Voici quelques trucs à savoir:__\n - On a quand mêmes quelques règles, check le salon #regles\n - Si tu veux trouver des potes pour jouer à un jeu, tu peux utiliser la commande `!jeu`\n - Surveille les salons #annonces et #sondages pour être au courant de tout et participer à l'évolution de la chaîne!")
      end
    end

    module AutoRole
      extend Discordrb::EventContainer

      member_join do |event|
        event.user.add_role('371335759640133636') unless event.user.bot_account
      end
    end

  end
end
