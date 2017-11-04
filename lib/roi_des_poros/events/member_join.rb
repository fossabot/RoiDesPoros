module RoiDesPoros
  module Events
    # Say welcome to new users
    module JoinMessage
      extend Discordrb::EventContainer
      member_join do |event|
        event.server.text_channels.select{ |channel| channel.id == CONFIG.welcome_channel }[0].send_message("Hop hop, on a un nouveau!  \nBienvenue à <@#{event.member.id}> <:poroblush:371719480146919425>")
      end
    end
  end
end