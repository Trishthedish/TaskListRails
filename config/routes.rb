Rails.application.routes.draw do

  get "/auth/:provider/callback" =>  "sessions#create"

  get 'sessions/create'

  get 'sessions/logout' => 'sessions#logout', as: 'logout'

  root to: 'tasks#index'
# changed this to index to tasks. NEEED FOLLOW UP!?
  get 'tasks/index' , as: 'tasks'

#apparently the syntax used in previous project aren't necessary. but its helpful.
# when you're going to manipulate it it needs to happen before. If its just showing it. put id after.

  get 'tasks/show/:id' => 'tasks#show', as: 'show'

  get 'tasks/new', as: 'new'

  post 'tasks/create', as: 'create'

  get 'tasks/:id/edit' => 'tasks#edit', as: 'edit'

  put 'tasks/:id/update' => 'tasks#update', as: 'update'

  # patch 'tasks/:id/edit' => 'tasks#update', as: 'updates'

# Trish you may need to be careful because you used delete and in previous project you used destroy.
  delete 'tasks/:id/delete' => 'tasks#destroy', as: 'delete'

  patch 'tasks/:id/complete' => 'tasks#complete', as: 'complete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
