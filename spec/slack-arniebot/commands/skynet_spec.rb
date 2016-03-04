require 'spec_helper'

describe SlackArniebot::Commands::Skynet do
  def app
    SlackArniebot::Bot.instance
  end
  it 'says you suck' do
    expect(message: "#{SlackRubyBot.config.user} skynet", channel: "exercise").to respond_with_slack_message("SKYNET TERMINATE")
  end
end
