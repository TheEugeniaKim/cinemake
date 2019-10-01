Rails.application.routes.draw do

  ###Application Routes ###
  get '/', to: 'application#welcome', as: 'welcome'
  
  ###Session Routes
  get '/login', to: 'sessions#new', as: 'login'

  get '/signup', to: 'directors#new', as: 'signup'

  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'

  #Actors Test
  get '/test', to: 'actors#test', as: 'test'
  #Crew Members Test
  get '/crew_members/search', to: 'crew_members#index', as: 'crew_members'
  get '/crew_member/:id', to: 'crew_members#show', as: 'crew_member'
  post 'crew_member/create', to: 'crew_members#create', as: 'create_crew_member'


  ###Directors Routes###

  get '/directors/edit', to: 'directors#edit', as: 'edit_director'
  get '/directors/:id', to: 'directors#show', as: 'director'

  post '/directors', to: 'directors#create', as: 'directors'
  patch '/directors/:id', to: 'directors#update'
  delete '/directors/:id', to: 'directors#destroy'

  get '/directors/:id/projects', to: 'projects#index', as: 'projects'

  ###Movies###



end
