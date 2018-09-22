Rails.application.routes.draw do
  resources :portfolios
  get 'about' , to: 'pages#about'
  get 'content' , to: 'pages#content'
  resources :blogs
  root to: 'pages#home'
end
