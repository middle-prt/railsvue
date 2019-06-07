Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  # APIコントローラへのルーティング
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :prmaps, only: [:index]
    end
  end
end
