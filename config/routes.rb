Paporeto::Application.routes.draw do
  resources :reader_articles, only: [:new, :create, :show]

  devise_for :users

  get 'admin' => 'admin/articles#index'

  namespace :admin do
    resources :categories, path: 'categorias', path_names: {new: 'novo', edit: 'editar'}
    resources :articles, path: 'artigos', path_names: {new: 'novo', edit: 'editar'}
    resources :users, path: 'usuarios', path_names: {new: 'novo', edit: 'editar'}
  end

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox

  root 'home#index'

  resources :categories, path: '', only: [] do
    resources :articles, path: '', only: [:index, :show]
  end
end
