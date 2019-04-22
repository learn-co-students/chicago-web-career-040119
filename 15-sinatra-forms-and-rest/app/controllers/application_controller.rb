require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get "/" do
    erb :welcome
  end

  get "/shows" do
    @shows = Show.all
    erb :index
  end

  get "/shows/new" do
    erb :new
  end

  get "/shows/:id" do
    @show = Show.find(params[:id])
    erb :show
  end

  patch "/shows/:id" do
    update_show = Show.find(params[:id])
    update_show.update(name: params["name"], network: params["network"], genre: params["genre"])
    redirect "/shows/#{params[:id]}"
  end

  post '/shows' do
    Show.create(name: params["name"], network: params["network"], genre: params["genre"])
    new_show = Show.last
    redirect "/shows/#{new_show.id}"
  end

  get "/shows/:id/edit" do
    @show = Show.find(params[:id])
    erb :edit
  end

  delete "/shows/:id" do
    Show.delete(params[:id])
    redirect "/shows"
  end

end
