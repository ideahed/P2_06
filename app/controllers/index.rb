get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  #Create and return a JSON object with the random cell and color given below.
  content_type :json
  number = rand(0..8)
  color  = "#" + "%06x" % (rand * 0xffffff)
  {color: color, number: number}.to_json
end

