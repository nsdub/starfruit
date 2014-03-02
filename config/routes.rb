Starfruit::Application.routes.draw do
  resources :products

  devise_for :users
  
  get '/:username' => 'users#show', as: 'storefront'
  root :to => "pages#home"
end
