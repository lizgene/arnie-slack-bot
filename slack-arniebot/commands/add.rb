module SlackArniebot
  module Commands
    class Add < SlackRubyBot::Commands::Base
      command 'add' do |client, data, _match|
        new_exercise = _match[:expression]
        # might be able to use !channel to get the whole channel

        File.open('exercises.txt', 'a') do |file|
          file.puts(new_exercise)
        end
        client.say(channel: data.channel, text: "Added #{new_exercise} to my exercise list")
      end
    end
  end
end
