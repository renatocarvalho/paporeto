Paporeto::Application.routes.draw do
  devise_for :users

  root 'admin/articles#index'

  namespace :admin do
    resources :categories, path: 'categorias', path_names: {new: 'novo', edit: 'editar'}
    resources :articles, path: 'artigos', path_names: {new: 'novo', edit: 'editar'}
    resources :users, path: 'usuarios', path_names: {new: 'novo', edit: 'editar'}
  end

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
