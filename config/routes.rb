Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
<<<<<<< HEAD
  root 'welcome#index'

  resources :surveys, :users, :questions, :sessions
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'#, as: 'create_session'
  # delete '/logout' => 'sessions#destroy'#, as: 'logout'


=======

  root 'welcome#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :surveys, :users, :questions, :survey_choices
  get '/thanks' => 'application#thanks'
  # get '/user_surveys/:id' => 'user_surveys#new'
  resources :user_surveys
  # post '/user_surveys/:id' => 'user_surveys#create', as: 'new_game'
  # get '/user_surveys/:id/question/:id' => 'user_surveys#get_question', as: 'ask_question'
>>>>>>> 1cf42babd42e77ae4fbdbe874467a01eaaef32b9

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
