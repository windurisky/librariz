Rails.application.routes.draw do
  get '/books/:id', to: 'books#show'
  post '/books', to: 'books#create'
  put '/books', to: 'books#update'
  delete '/books/:id', to: 'books#delete'

  get '/rents/:id', to: 'rents#show'
  post '/rents', to: 'rents#create'
  put '/rents/:id/return', to: 'rents#return'
end
