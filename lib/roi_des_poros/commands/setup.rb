module RoiDesPoros

  module Commands

    module Setup
      extend Discordrb::Commands::CommandContainer
      command([:setup, :config], description: 'Affiche les composants du PC d\'Enjoy.') do |event|

        event.channel.send_embed do |e|
          e.color = 5800090
          e.description = "__PC__:"

          e.add_field name: 'Processeur:', value: "Intel Core i5-7600K", inline: true
          e.add_field name: 'Carte Graphique:', value: "Geforce GTX 1060 6Go", inline: true
          e.add_field name: 'Carte mère:', value: "MSI B250 Gaming M3", inline: true
          e.add_field name: 'RAM:', value: "16Go", inline: true
          e.add_field name: 'Alimentation:', value: "Corsair VS450", inline: true
          e.add_field name: 'Ventirad:', value: "LEPA Neollusion", inline: true
          e.add_field name: 'SSD:', value: "Samsung EVO 250Go", inline: true
          e.add_field name: 'HDD:', value: "Seagate Barracuda 1To", inline: true
          e.add_field name: 'Boitier:', value: "Spirit of Gamer ROGUE IV", inline: true
        end
        
        event.channel.send_embed do |e|
          e.color = 5800090
          e.description = "__Accessoires:__"

          e.add_field name: 'Casque:', value: "Razer Kraken Neon Rose", inline: true
          e.add_field name: 'Micro:', value: "The t.bone SC 440 USB", inline: true
	  e.add_field name: 'Oreilles casque', value: "Razer Kitty Ears", inline: true
          e.add_field name: 'Ecran 1:', value: "ASUS VN247H", inline: true
	  e.add_field name: 'Ecran 2:', value: "HP W2216V", inline: true
          e.add_field name: 'Clavier:', value: "Razer DeathStalker Chroma", inline: true
	  e.add_field name: 'Souris:', value: "Razer Mamba Chroma", inline: true
          e.add_field name: 'Webcam:', value: "Logitech C-922 HD Pro", inline: true
          e.add_field name: 'Logiciel de stream:', value: "XSplit Broadcaster Premium", inline: true
          
          e.footer = { text: "Roi des Poros v#{VERSION} by TriiNoxYs" }
        end
      end
    end
  end
end
