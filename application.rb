require 'rubygems'
require 'sinatra'
require 'environment'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

helpers do
  def celeste
    'Master Practitioner/Consultant, <a href="mailto:Celeste@capecodfengshui.com">Celeste</a>'
  end
end

get '/ccfs.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :ccfs
end

# root page
get '/' do
  haml :index
end

get '/index.html' do
  haml :index
end

get '/memberships.html' do
  haml :memberships
end

get '/programs.html' do
  haml :programs
end

get '/seminars.html' do
  haml :seminars
end

get '/about.html' do
  haml :about
end

get '/contact.html' do
  haml :contact
end
