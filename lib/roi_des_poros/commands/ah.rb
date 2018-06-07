module RoiDesPoros

  module Commands

    module Ah
      extend Discordrb::Commands::CommandContainer

      command(:ah, description: 'AH!', usage: '!ah') do |event, *args|

        if args.size >= 1 && args[0] == "--noby"
          event.channel.send_file(File.new("data/emojis/enjoyah.png"))
        else
          event.channel.send_embed do |embed|
            embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/371046774758178818/454349424316121100/enjoyah.png')
            embed.footer = {text: "by #{event.user.name}" }
          end
        end
        
        event.message.delete
      end
    end
  end
end
