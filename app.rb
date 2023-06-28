require 'bundler/setup'
Bundler.require(:default)

class App < Sinatra::Base
  get '/' do
    "FOO=#{ENV['FOO']}\nSECRET_BAR=#{ENV['SECRET_BAR']}"
  end
end
