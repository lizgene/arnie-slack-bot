module SlackArniebot
  module Commands
    class Terminate < SlackRubyBot::Commands::Base
      command 'terminate' do |client, data, _match|
        terminated = _match[:expression]
        exercise = File.readlines("exercises.txt").sample.strip
        client.say(channel: data.channel, text: "<@#{terminated}> 100 #{exercise} NOW!")
      end
    end
  end
end
