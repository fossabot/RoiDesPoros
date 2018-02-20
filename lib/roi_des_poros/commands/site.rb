module RoiDesPoros

  module Commands

    module Site
      extend Discordrb::Commands::CommandContainer

      command(:site, description: 'Affiche le lien du site.', usage: '!site') do |event|
        event.respond("Le site est disponible à cette adresse: https://zelenjoy.fr <:porosmile:409338015706644490>")
      end
    end
  end
end
