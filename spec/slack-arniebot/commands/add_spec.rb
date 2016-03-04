require 'spec_helper'

describe SlackArniebot::Commands::Add do
  def app
    SlackArniebot::Bot.instance
  end
  it 'adds a line to the file' do
    expect(message: "#{SlackRubyBot.config.user} add blahblah", channel: 'exercise').to respond_with_slack_message('Added blahblah to my exercise list')
  end
end
