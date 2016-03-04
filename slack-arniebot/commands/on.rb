module SlackArniebot
  module Commands
    class On < SlackRubyBot::Commands::Base
      command 'on' do |client, data, _match|
        client.say(channel: data.channel, text: 'ARNIE ACTIVATED')
      end
    end
  end
end
