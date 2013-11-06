BlogMagmaconfCom::Application.routes.draw do
  devise_scope :user do
    get 'google_apps_sign_in',
        to: "crowdint_auth/omniauth_callbacks#google_apps_sign_in"
  end

  devise_for :users, controllers: { omniauth_callbacks: 'crowdint_auth/omniauth_callbacks' }
  root to: "posts#index"

  mount Crowdblog::Engine => "/"
end
