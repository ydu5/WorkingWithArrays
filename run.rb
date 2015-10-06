require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do

	years = [1972..2013]

  # code!
  erb :years, layout: :main
end

get '/states' do

	states = ["Nebraska","New York", "New Jersey","North Carolina","New Hampshire"]
	states.sort
	states.sort!
	
  # code!
  erb :states, layout: :main
end
