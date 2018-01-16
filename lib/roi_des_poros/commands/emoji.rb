module RoiDesPoros

  module Commands

    module Emoji
      extend Discordrb::Commands::CommandContainer

      command(:emoji, description: 'Affiche un emoji en grand.', usage: '!emoji <emoji>', min_args: 1, max_args: 1) do |event, emoji|
	event.message.delete

	if !event.message.emoji?
	  code = Twemoji.find_by_text(Twemoji.find_by(unicode: emoji))
	  file = "data/emojis/#{code}.png"
	  url = "https://twemoji.maxcdn.com/2/72x72/#{code}.png"
	else
	  file = "data/emojis/#{event.message.emoji[0].name}.png"
   	  url = event.message.emoji[0].icon_url
	end

        File.write(file, open(url).read) unless File.file? file
        event.channel.send_file(File.new(file))

	return
      end
    end
  end
end
