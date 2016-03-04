module SlackArniebot
  module Commands
    class Terminate < SlackRubyBot::Commands::Base
      command 'terminate' do |client, data, _match|
        exercise = File.readlines("exercises.txt").sample.strip

        # <@#{data.user}>
        client.say(channel: data.channel, text: "<@channel> 100 #{exercise} NOW!")
      end
    end
  end
end
