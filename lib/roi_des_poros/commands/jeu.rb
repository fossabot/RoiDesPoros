module RoiDesPoros

  module Commands

    module Jeu
      extend Discordrb::Commands::CommandContainer

# Roles format
=begin
      games = {
	  :fortnite  => {role_id: "373807478900523013", names: ["fortnite"]},
          :minecraft => {role_id: "373811887562948609", names: ["minecraft, mc"]}
      }
=end
      
      command(:jeu, description: 'Système de jeux pour trouver des potos avec qui jouer.', usage: '!jeu <nom du jeu>') do |event, *args|
	file = File.read('/opt/ruby/discord/apps/RoiDesPoros/data/games.json')
        games = JSON.parse(file)
        
        # List
	if args.size == 0
	  response = "Voici la liste des jeux, Chef! <:ouichef:374627649370324992>\n```"
	  games.each do |game| 
	    response << " - #{game[0]}"
	    if game[1]["names"].size > 1 then response << " (alias: #{game[1]["names"].drop(1).join(', ')})" end
	    response << "\n"
	  end
	  response << "```"
	  event.respond(response)
	else
	  # Create
	  if args[0].downcase == "create"
	    if event.user.id != 131218864234168321 then event.respond("Tu ne peux pas faire ça!") && return end
	    games[args[1]] = {role_id: args[2], names: [args[1].downcase]}
	    File.open("/opt/ruby/discord/apps/RoiDesPoros/data/games.json", "w") { |f| f.write(JSON.pretty_generate(games)) }
	    event.respond("Le jeu a bien été créé! <:porocoolguy:371719520559300608>")

	  # Delete	  
	  elsif args[0].downcase == "delete"
            if event.user.id != 131218864234168321 then event.respond("Tu ne peux pas faire ça!") && return end	  
	    games.delete(args[1])
	    File.open("/opt/ruby/discord/apps/RoiDesPoros/data/games.json", "w") { |f| f.write(JSON.pretty_generate(games)) }
	    event.respond("Le jeu a bien été supprimé! <:porosad:371719545762742304>")	  	

	  # Join
	  else
            success = false
            games.each do |game|
	      if game[1]["names"].include? args[0].downcase
                event.user.add_role(game[1]["role_id"])
                success = true
                break
              end
            end

            if success then event.respond("Oui, Chef! Voila, Chef! <:ouichef:374627649370324992>")
            else event.respond("Euh Chef... Je ne trouve pas votre jeu... <:porosad:371719545762742304>")
            end
	  end  
	end
      end
    end
  end
end
