Rails.application.routes.draw do
  devise_for :users  

  root 'rooms#index'
  get 'new' => 'rooms#new'
  get 'new_err' => 'rooms#new_err'
  get 'room/:room_id' => 'rooms#room'
  # get 'mypage/:user_id' => 'rooms#mypage'
  get 'mypage/:user_id' => 'rooms#mypage'
  
  get 'destroy_room/:room_id' => 'rooms#destroy_room'
  get 'destroy_furniture/:furniture_id' => 'rooms#destroy_furniture'
  get 'resize_furniture' => 'rooms#resize_furniture'
  get 'create_furniture' => 'rooms#create_furniture'
  post 'create_room' => 'rooms#create_room'
  post 'save_room' => 'rooms#save_room'
  
  get 'update_furniture' => 'rooms#update_furniture'

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
