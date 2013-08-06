Paporeto::Application.routes.draw do
  root 'articles#index'

  resources :articles, path: 'artigos', only: [:index, :show]

  devise_for :users

  namespace :admin do
    resources :categories, path: 'categorias', path_names: {new: 'novo', edit: 'editar'}
    resources :articles, path: 'artigos', path_names: {new: 'novo', edit: 'editar'}
    resources :users, path: 'usuarios', path_names: {new: 'novo', edit: 'editar'}
  end

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
