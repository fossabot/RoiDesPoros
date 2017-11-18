module RoiDesPoros

  module Commands

    # Prints most useful information about the bot.
    module About
      extend Discordrb::Commands::CommandContainer
      command(:about, description: 'Affiche les informations du bot.') do |event|

        event.channel.send_embed do |e|
          e.color = 5800090
          e.author = {
            icon_url: 'https://cdn.discordapp.com/avatars/372776478192041984/94352fbe5d2ea24b5e69a4ea6d6bf4fe.png',
            name: 'Roi des Poros',
            url: 'https://triinoxys.fr'
          }
          e.description = "Je suis le **Roi des Poros**. Mon but est d'animer le serveur et de répondre à *tous* vos besoins!"

          e.add_field name: '__Infos:__', value: "**Développeur:** <@131218864234168321>  \n**Propriétaire de l'instance:** <@#{CONFIG.owner_id}>  \n**GitHub:** [github.com/TriiNoxYs/RoiDesPoros](https://github.com/TriiNoxYs/RoiDesPoros)  \n**Discord:** [discord.gg/sKYmk9c](https://discord.gg/sKYmk9c)  \n**Mail:** contact@triinoxys.fr", inline: true
          # e.add_field name: '__Colonne 2:__', value: "blblbl", inline: true

          e.footer = { text: "Roi des Poros v#{VERSION} by TriiNoxYs" }
        end
      end
    end
  end
end