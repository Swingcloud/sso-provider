Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :delete],
             controllers: { omniauth_callbacks: 'callbacks' }

  namespace :api do
    namespace :v0 do
      match '/auth/sso/authorize' => 'auth#authorize', via: :all
      match '/auth/sso/access_token' => 'auth#access_token', via: :all
      match '/auth/sso/user' => 'auth#user', via: :all
      match '/oauth/token' => 'auth#access_token', via: :all
      get 'home' => 'home#index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
