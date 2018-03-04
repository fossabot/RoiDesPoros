module RoiDesPoros

  module Commands

    # This command is only here to not trigger the help message when using the !ftn command
    module FortniteStats
      extend Discordrb::Commands::CommandContainer
      command(:ftn, description: 'Stats Fortnite!') {}
    end  
  end
end
