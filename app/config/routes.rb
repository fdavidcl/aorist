Rails.application.routes.draw do
  get 'anunciante_contratos/index'

  get 'medio_contratos/index'

  get 'cobros/index'

  get 'pagos/index'

  get 'audiences/index'

  get 'anuncios/index'

  get 'anunciantes/index'

  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  get 'contabilidad' => 'contabilidad#show'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :medios do
    resources :espacios
    resources :contratos, controller: :medio_contratos
  end

  resources :anunciantes do
    resources :anuncios
    resources :contratos, controller: :anunciante_contratos
  end

  resources :audiences
  resources :pagos
  resources :cobros

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
