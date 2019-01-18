Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'blog/posts#index', as: 'home'
  
  devise_for :authors
  namespace :authors do
    resources :posts 
  end

  scope module: 'blog' do
    get 'posts' => 'posts#index', as: 'posts'
    get 'posts/:id' => 'posts#show', as: 'post'
  end
end
