Rails.application.routes.draw do
  devise_for :users
  resources :usuarios
  resources :manutencao_preventivas
  get 'home/index'
  root "home#index"

  post 'login/logar' => 'login#logar'

  get "marcas/:tipo_veiculo_id/marcas_by_tipo_veiculo" => "marcas#marcas_by_tipo_veiculo", :as => "marcas_by_tipo_veiculo", :format => :json

  get "modelos/:marca_id/modelos_by_marca" => "modelos#modelos_by_marca", :as => "modelos_by_marca", :format => :json

  resources :condutores
  resources :veiculos
  resources :tipo_veiculos
  resources :modelos
  resources :cor_veiculos
  resources :marcas

  
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
