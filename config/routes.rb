Paporeto::Application.routes.draw do
  devise_for :users

  resources :categories, path: 'categorias', path_names: {new: 'novo', edit: 'editar'}

  resources :articles, path: 'artigos', path_names: {new: 'novo', edit: 'editar'}
  root 'articles#index'

  resources :users, path: 'usuarios', path_names: {new: 'novo', edit: 'editar'}

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
