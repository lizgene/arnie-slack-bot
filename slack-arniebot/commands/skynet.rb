module SlackArniebot
  module Commands
    class Skynet < SlackRubyBot::Commands::Base
      match(/skynet/) do |client, data, match|
        client.say(channel: data.channel, text: 'SKYNET TERMINATE', gif: 'terminate')
      end
    end
  end
end
