Rails.application.routes.draw do
  
  
  root 'tweets#index'
  
  resources :tweets
  # get 'tweets/index'

  # get 'tweets/new'
  
  # post 'tweets', to:'tweets#create' #RESTful 라우트 방식 
  # # get 'tweets', to: 'tweets#create'
  # # get 'tweets/create' => 'tweets#create'
  
  # get 'tweets/:id/edit' => 'tweets#edit'

  # put 'tweets/update/:id' => 'tweets#update'

  # delete 'tweets/:id' => 'tweets#destroy'

  get 'index/new'

  get 'index/create'

  get 'index/edit'

  get 'index/update'

  get 'index/destroy'

  resources :blogs
  get 'user/index'

  get 'user/new'

  post 'user/create'

  get 'user/show'

  get 'user/login'

  post 'user/login_process'

  get 'user/logout'

  get 'post/index'

  get 'post/new'

  post 'post/create'

  get 'post/show/:id' => 'post#show'
  
  post 'post/create_comment/:id' => 'post#create_comment'
  
  get 'post/edit/:id' => 'post#edit'
  
  get 'post/update/:id' => 'post#update'
  
  get 'post/destroy/:id' => 'post#destroy'

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
