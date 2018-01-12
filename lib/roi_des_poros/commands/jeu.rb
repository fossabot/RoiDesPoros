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
	user = event.user
        
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
	    if user.id != 131218864234168321 then event.respond("Tu ne peux pas faire ça!") && return end
	    games[args[1]] = {role_id: args[2], names: [args[1].downcase]}
	    File.open("/opt/ruby/discord/apps/RoiDesPoros/data/games.json", "w") { |f| f.write(JSON.pretty_generate(games)) }
	    event.respond("Le jeu a bien été créé! <:porocoolguy:371719520559300608>")

	  # Delete	  
	  elsif args[0].downcase == "delete"
            if user.id != 131218864234168321 then event.respond("Tu ne peux pas faire ça!") && return end	  
	    games.delete(args[1])
	    File.open("/opt/ruby/discord/apps/RoiDesPoros/data/games.json", "w") { |f| f.write(JSON.pretty_generate(games)) }
	    event.respond("Le jeu a bien été supprimé! <:porosad:371719545762742304>")	  	

	  # Join
	  else
	    success = false
            games.each do |game|
	      if game[1]["names"].include? args[0].downcase
		if user.role? game[1]["role_id"]
		  user.remove_role(game[1]["role_id"])
		  event.respond("Et voila, plus jamais de @$%#!?! de notifs pour ce groupe! <:fuckteemo:374627276429721611>")
                  success = true
		  break
		else
		  user.add_role(game[1]["role_id"])
		  event.respond("Hopla, je t'ai ajouté à ce groupe! <:ouichef:374627649370324992>")
	  	  success = true                  
		  break
		end
              end
            end

            if !success then event.respond("Euh Chef... Je ne trouve pas votre jeu... <:porosad:371719545762742304>")
            end
	  end  
	end
      end
    end
  end
end
