Starfruit::Application.routes.draw do
  resources :products

  devise_for :users
  
  get '/:username' => 'users#show', as: 'storefront'
  get 'collection/:username' => 'users#collection', as: 'collection'
  root :to => "pages#home"
  
  scope '/admin' do
    get '/dashboard' => 'admin#dashboard', as: 'admin_dashboard'
  end
end
