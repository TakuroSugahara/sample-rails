Rails.application.routes.draw do
  get 'posts', to: 'post#index'
  get 'posts/add', to:'post#add'
  post 'posts/add', to:'post#add'
  get 'posts/:id', to: 'post#show'
  get 'posts/:id/edit', to:'post#edit'
  patch 'posts/:id/edit', to:'post#edit'
end
