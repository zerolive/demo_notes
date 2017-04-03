Rails.application.routes.draw do
  get '/notes/new' => 'notes#new'
  post '/notes/create' => 'notes#create'

  get '/notes/list' => 'notes#list'
end
