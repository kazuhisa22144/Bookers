Rails.application.routes.draw do
  
resources :books

get '/' => 'books#top'

get 'index' => 'books#index'

end
