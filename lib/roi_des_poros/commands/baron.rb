module RoiDesPoros

  module Commands

    # This command is only here to not trigger the help message when using the !baron command
    module Baron
      extend Discordrb::Commands::CommandContainer
      command([:baron, :b], description: 'Bot Baron!') {}
    end  
  end
end
