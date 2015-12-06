Rails.application.routes.draw do

  devise_for :users

  # root to home for Devise, to possibly be changed later.
  devise_scope :user do
    #authenticated is currently set to pantry to be changed later
    authenticated :user do
      root 'menu#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'ingredient/add', to: 'ingredient#add', as: 'ingredient_add'
  post 'ingredient/add', to: 'ingredient#create'

  get 'pantry', to: 'pantry#index', as: 'pantry'
  get 'pantry/add', to: 'pantry#add', as: 'pantry_add'
  post 'pantry/add', to: 'pantry#create'
  get 'pantry/:id/edit', to: 'pantry#edit', as: 'pantry_edit'
  #post 'pantry/:id/edit', to: 'pantry#update'
  patch '/pantry.:id', to: 'pantry#update'
  post 'pantry/:id/edit', to: 'pantry#update'
  put '/pantry/:id', to: 'pantry#update'

  get 'meal_list', to: 'meal_list#index', as: 'meal_list'
  post 'meal_list', to: 'meal_list#edit', as: 'meal_list_edit'
  get 'meal_list/:id/delete', to: 'meal_list#delete', as: 'meal_list_delete'

  #component routes
  get 'component', to: 'component#index', as: 'component'
  get 'component/add', to: 'component#add', as: 'component_add'
  post 'component/add', to: 'component#create'
  get 'component/:id/edit', to: 'component#edit', as: 'component_edit'
  patch '/component.:id', to: 'component#update'
  post 'component/:id/edit', to: 'component#update'
  put '/component/:id', to: 'component#update'

  #components_ingredient routes
  get 'components_ingredient/:id/add', to: 'components_ingredient#add', as: 'components_ingredient_add'
  post 'components_ingredient/:id/add', to: 'components_ingredient#create'
  get 'components_ingredient/:id/:comp_id/delete', to: 'components_ingredient#delete', as: 'components_ingredient_delete'
  
  get 'components_ingredient/:id/:comp_id/index', to: 'components_ingredient#index', as: 'components_ingredient_index'

  get 'meal', to: 'meal#index', as: 'meal'
  get 'meal/add', to: 'meal#add', as: 'meal_add'
  post 'meal/add', to: 'meal#create'
  get 'meal/:id/edit', to: 'meal#edit', as: 'meal_edit'
  patch '/meal.:id', to: 'meal#update'
  post 'meal/:id/edit', to: 'meal#update'
  get 'meal/:id/delete', to: 'meal#delete', as:'meal_delete'

  get 'menu', to: 'menu#index', as: 'menu'
  get 'menu/add', to: 'menu#add', as: 'menu_add'
  post 'menu/add', to: 'menu#create'





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
