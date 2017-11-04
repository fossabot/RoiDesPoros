module RoiDesPoros
  module Events
    # For a better life...
    module AntiJul
      extend Discordrb::EventContainer
      message(starting_with: not!(CONFIG.prefix)) do |event|
        unless event.from_bot?
          if (event.channel.name == "poro-zic" || event.channel.id == 372545764720640000) && (event.message.to_s.downcase.include?("jul"))
            event.respond("Attends attends... T'as dit quoi là ?  \nJul?! Ca vaut un ban ça tu sais...")
          end
        end
      end
    end
    
    module AntiJul
      extend Discordrb::EventContainer
      message(starting_with: not!(CONFIG.prefix)) do |event|
        unless event.from_bot?
          if (event.channel.name == "poro-zic" || event.channel.id == 372545764720640000) && (event.message.to_s.downcase.include?("jul"))
            event.respond("Attends attends... T'as dit quoi là ?  \nJul?! Ca vaut un ban ça tu sais...")
          end
        end
      end
    end
  end
end