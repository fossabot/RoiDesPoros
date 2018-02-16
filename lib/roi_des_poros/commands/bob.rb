module RoiDesPoros

  module Commands

    module Bob
      extend Discordrb::Commands::CommandContainer

      command(:bob, description: 'Bob le train!', usage: '!bob') do |event|
	event.respond("<:bob:402108972393299968> :regional_indicator_b: :regional_indicator_o: :regional_indicator_b: <:bob:402108972393299968>")
	event.message.delete
      end
    end
  end
end
