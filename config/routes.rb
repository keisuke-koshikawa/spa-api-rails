Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  scope format: 'json' do
    resources :users, only: :show do
      resources :posts
    end
  end
end
