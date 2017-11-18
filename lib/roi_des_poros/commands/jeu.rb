module RoiDesPoros

  module Commands

    #
    module Jeu
      extend Discordrb::Commands::CommandContainer
      
      games = [      
          fortnite = [:"fortnite"],
          league_of_legends = [:"league_of_legends", :"lol", :"league_of_legend", :"league of legends", :"league of legend"],
          minecraft = [:"minecraft", :"mc"],
          payday2 = [:"payday2", :"payday_2", :"payday 2"],
          call_of_duty = [:"call_of_duty",:"call of duty", :"cod", :"callofduty"],
          csgo = [:"csgo", :"cs_go", :"cs go", :"counter_strike", :"counter strike", :"counterstrike"],
          fifa = [:"fifa"],
          paladins = [:"paladins", :"paladin"],
          rocket_league = [:"rocket_league",:"rocket league", :"rocketleague"],
          dofus = [:"dofus"]
      ]
      
      roles = {
          :fortnite          => 373807478900523013,
          :league_of_legends => 373807585415135253,
          :minecraft         => 373811887562948609,
          :payday2           => 373814297626673152,
          :call_of_duty      => 381454112081838082,
          :csgo              => 373811989614690315,
          :fifa              => 373942275572498447,
          :paladins          => 373820014178074626,
          :rocket_league     => 373819423665946624,
          :dofus             => 373819199388385281,
      }
      
      
      command(:jeu, description: 'Attribue un rôle en fonction du jeu souhaité.', min_args: 1) do |event, role|
      
        role = role.downcase.to_sym
        success = false
        
        games.each do |game|
            if game.include? role
                event.user.add_role(roles[game[0]])
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