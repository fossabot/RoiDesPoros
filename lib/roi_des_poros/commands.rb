module RoiDesPoros
  
  # Module for RDP commands.
  module Commands
    # Require files from directory
    Dir["#{File.dirname(__FILE__)}/commands/*.rb"].each { |file| require file }

=begin
    @commands = [
      Announce,
      Delete,
      Invite,
      Ping,
      About,
      Avatar,
      Toggle,
      Set,
      Default,
      Settings,
      Ignore,
      Join,
      Leave,
    ]
=end
    
    @commands = [
      About,
      Config
    ]

    def self.include!
      @commands.each do |command|
        RoiDesPoros::BOT.include!(command)
      end
    end
  end
end