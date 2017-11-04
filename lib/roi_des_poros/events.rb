module RoiDesPoros
  
  # Module for RDP events.
  module Events
    # Require files from directory
    Dir["#{File.dirname(__FILE__)}/events/*.rb"].each { |file| require file }

  @events = [
      Mention,
      AntiJul,
      JoinMessage,
      LeaveMessage,
      BanMessage
]

    def self.include!
      @events.each do |event|
        RoiDesPoros::BOT.include!(event)
      end
    end
  end
end