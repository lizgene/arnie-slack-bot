require 'spec_helper'

describe SlackArniebot::Commands::Terminate do
  def app
    SlackArniebot::Bot.instance
  end
  it 'terminates with 100 exercises' do
    expect(message: "#{SlackRubyBot.config.user} terminate liz", channel: 'exercise').to respond_with_slack_message(/<@liz> 15 .+ Fabuloooous!/)
  end
end
