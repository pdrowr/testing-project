Rails.application.routes.draw do
  #root route
  root 'front#index'

  get 'economic_sectors/index', to: 'economic_sectors#index', as: :listing_sectors
  get 'economic_sectors/new', to: 'economic_sectors#new', as: :new_sector
  post 'economic_sectors/create', to: 'economic_sectors#create', as: :create_sector
  delete 'economic_sectors/:sector_id/delete', to: 'economic_sectors#delete', as: :delete_sector


  #clients routes
  get 'clients/index', to: 'clients#index', as: :listing_clients
  get 'clients/new', to: 'clients#new', as: :new_client
  post 'clients/create', to: 'clients#create', as: :create_client
  get 'clients/:client_id/show', to: 'clients#show', as: :show_client
  get 'clients/:client_id/edit', to: 'clients#edit', as: :edit_client
  patch 'clients/:client_id/update', to: 'clients#update', as: :update_client
  delete 'clients/:client_id/delete', to: 'clients#delete', as: :delete_client

  #sales routes
  get 'sales/index', to: 'sales#index', as: :listing_sales
  get 'sales/new', to: 'sales#new', as: :new_sale
  post 'sales/create', to: 'sales#create', as: :create_sale
end
