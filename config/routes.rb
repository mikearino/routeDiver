Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  get 'about', to: 'pages#about'
  get 'leadgen/advertising/asdf/lead', to: 'pages#contact', as: 'lead'
  resources :blogs
  get 'posts/*missing', to: 'posts#missing'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'
  
  root to:'pages#home'
end

  
