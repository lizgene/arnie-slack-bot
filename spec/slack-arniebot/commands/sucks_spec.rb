require 'spec_helper'

describe SlackArniebot::Commands::Sucks do
  def app
    SlackArniebot::Bot.instance
  end
  it 'says you suck' do
    expect(message: "#{SlackRubyBot.config.user} sucks", channel: "exercise").to respond_with_slack_message("No <@user>, you suck!")
  end
end
