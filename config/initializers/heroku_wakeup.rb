require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

scheduler.every '15m' do
  require "net/http"
  require "uri"

  url1 = 'http://paporeto-renato.herokuapp.com'
  Net::HTTP.get_response(URI.parse(url1))

  # url2 = 'http://blog.startae.com.br'
  # Net::HTTP.get_response(URI.parse(url2))
end
