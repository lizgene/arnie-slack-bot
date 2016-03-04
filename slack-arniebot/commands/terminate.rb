module SlackArniebot
  module Commands
    class Terminate < SlackRubyBot::Commands::Base
      command 'terminate' do |client, data, _match|
        terminated = _match[:expression]
        # might be able to use !channel to get the whole channel
        exercise = File.readlines("exercises.txt").sample.strip.upcase
        client.say(channel: data.channel, text: "<@#{terminated}> 15 #{exercise} Fabuloooous!")
      end
    end
  end
end
