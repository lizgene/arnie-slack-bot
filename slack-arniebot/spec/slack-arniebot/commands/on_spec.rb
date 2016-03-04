require 'spec_helper'

describe SlackMathbot::Commands::Calculate do
  def app
    SlackMathbot::Bot.instance
  end
  it 'returns ARNIE ACTIVATED' do
    expect(message: "#{SlackRubyBot.config.user} go", channel: 'channel').to respond_with_slack_message('ARNIE ACTIVATED')
  end
end
