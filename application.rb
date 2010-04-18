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
    '<span class="boldtext">Master Practitioner/Consultant</span>, <a href="mailto:Celeste@capecodfengshui.com">Celeste</a>'
  end
end

get '/ccfs.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :ccfs
end

# root page
get '/' do
  @current_page = "Home"
  haml :index
end

get '/index.html' do
  @current_page = "Home"
  haml :index
end

get '/memberships.html' do
  @current_page = "Memberships"
  haml :memberships
end

get '/business.html' do
  @current_page = "Business"
  haml :business
end

get '/programs.html' do
  @current_page = "Programs"
  haml :programs
end

get '/seminars.html' do
  @current_page = "Seminars"
  haml :seminars
end

get '/about.html' do
  @current_page = "About"
  haml :about
end

get '/contact.html' do
  @current_page = "Contact"
  haml :contact
end
