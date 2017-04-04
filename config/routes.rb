Rails.application.routes.draw do
  get '/notes/new' => 'notes#new'
  post '/notes/create' => 'notes#create'

  get '/notes/list' => 'notes#list'

  get '/notes/edit/:id' => 'notes#edit', as: :notes_edit
  patch '/notes/update/:id' => 'notes#update', as: :notes_update

  delete '/notes/delete/:id' => 'notes#delete', as: :notes_delete
end
