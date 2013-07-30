Paporeto::Application.routes.draw do
  resources :categories, path: 'categorias', path_names: {new: 'novo', edit: 'editar'}
  resources :articles, path: 'artigos', path_names: {new: 'novo', edit: 'editar'}
  root 'articles#index'
end
