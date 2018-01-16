module RoiDesPoros
  module Events
    # Say welcome to new users
    module BotReady
      extend Discordrb::EventContainer
      
      ready do |event|
	BOT.game = "triinoxys.fr | !help"
      end
    end
  end
end
