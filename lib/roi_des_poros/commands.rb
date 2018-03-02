module RoiDesPoros
  
  # Module for RDP commands.
  module Commands
    # Require files from directory
    Dir["#{File.dirname(__FILE__)}/commands/*.rb"].each { |file| require file }

    @commands = [
      About,
      Setup,
      Jeu,
      Purge,
      Poll,
      Avatar,
      Emoji,
      Bob,
      Site,
      Idee
    ]

    def self.include!
      @commands.each do |command|
        RoiDesPoros::BOT.include!(command)
      end
    end
  end
end
