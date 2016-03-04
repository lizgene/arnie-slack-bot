module SlackArniebot
  module Commands
    class Sucks < SlackRubyBot::Commands::Base
      command 'sucks', 'suck', 'you suck', 'sucks!', 'you suck!' do |client, data, _match|
        client.say(channel: data.channel, text: "No <@#{data.user}>, you suck!", gif: 'rude')
      end
    end
  end
end
