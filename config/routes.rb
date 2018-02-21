Rails.application.routes.draw do
  get '/locations' => 'locations#index'
  post 'locations' => 'locations#create'
  get '/locations/:id' => 'locations#show'
  patch 'locations/:id' => 'locations#update'
  delete 'locations/:id' => 'locations#destroy'
end
