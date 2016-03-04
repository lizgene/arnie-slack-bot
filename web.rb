require 'sinatra/base'

module SlackArniebot
  class Web < Sinatra::Base
    get '/' do
      'Arnie is good for you yaaas.'
    end
  end
end
