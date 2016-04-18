Rails.application.routes.draw do
  get 'sessions/new'

  resources :comments

  resources :users

  resources :links

  # resources :login

  get "login" => "sessions#new"

  delete 'logout'  => 'sessions#destroy'

  get 'login' => 'login#new'

  post 'login' => 'login#create'

  get 'signup' => 'signup#new'

  post 'signup' => 'signup#create'

  get 'comments/index' => 'comments#index'

  get 'comments/new' => 'comments#new', :as => :comments_index_path

  get 'comments/show'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/create'

  get 'comments/delete'

  get 'links/index'

  get 'links/new'

  get 'links/show'

  get 'links/edit'

  get 'links/update'

  get 'links/create'

  get 'links/delete'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/create'

  get 'users/delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

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
