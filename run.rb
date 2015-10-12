require 'sinatra'

=begin
  jarp:

    you need to run the app to make sure it works. There are a couple of problems.
    variable need to start with @ to be accessible in the view file (see line below)

    see states view for more comments
=end

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do

	@years = [1972..2013]
  #should be
  @years = Array(1972..2013)

  # code!
  erb :years, layout: :main
end

get '/states' do
  # you created and sorted your arrays prefectly
	@states = ["Nebraska","New York", "New Jersey","North Carolina","New Hampshire"]
	@states.sort
	@states.sort!

  # code!
  erb :states, layout: :main
end
