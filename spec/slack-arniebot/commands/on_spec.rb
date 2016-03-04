require 'spec_helper'

describe SlackArniebot::Commands::On do
  def app
    SlackArniebot::Bot.instance
  end
  it 'returns ARNIE ACTIVATED' do
    expect(message: "#{SlackRubyBot.config.user} on", channel: 'exercise').to respond_with_slack_message('ARNIE ACTIVATED')
  end
end
