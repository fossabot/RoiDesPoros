module RoiDesPoros

  module Commands

    # Prints most useful information about the bot.
    module Config
      extend Discordrb::Commands::CommandContainer
      command(:config, description: 'Affiche les composants du PC d\'Enjoy.') do |event|

        event.channel.send_embed do |e|
          e.color = 5800090
          e.description = "__PC__:"

          e.add_field name: 'Processeur:', value: "Intel Core i5-7600K", inline: true
          e.add_field name: 'Carte Graphique:', value: "Geforce GTX 1060 6Go OC", inline: true
          e.add_field name: 'Carte mère:', value: "MSI B250 Gaming M3", inline: true
          e.add_field name: 'RAM:', value: "16Go", inline: true
          e.add_field name: 'Alimentation:', value: "Corsair VS450", inline: true
          e.add_field name: 'Ventirad:', value: "LEPA Neollusion", inline: true
          e.add_field name: 'Boitier:', value: "Spirit of Gamer ROGUE IV", inline: true
        end
        
        event.channel.send_embed do |e|
          e.color = 5800090
          e.description = "__Accessoires:__"

          e.add_field name: 'Casque:', value: "Razer Kraken Neon Rose", inline: true
          e.add_field name: 'Clavier:', value: "Razer DeathStalker Chroma", inline: true
          e.add_field name: 'Ecrans:', value: "2x BenQ GW2270H", inline: true
          e.add_field name: 'Souris:', value: "Logitech G500s", inline: true
          e.add_field name: 'Webcam:', value: "Logitech C-922 HD Pro", inline: true
          e.add_field name: 'Logiciel de stream:', value: "XSplit Broadcaster", inline: true
        end
      end
    end
  end
end