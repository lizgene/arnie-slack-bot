require 'spec_helper'

describe SlackArniebot::Commands::Terminate do
  def app
    SlackArniebot::Bot.instance
  end
  it 'returns ARNIE ACTIVATED' do
    expect(message: "#{SlackRubyBot.config.user} terminate", channel: 'exercise').to respond_with_slack_message(/@channel 100 .+ NOW!/)
  end
end
