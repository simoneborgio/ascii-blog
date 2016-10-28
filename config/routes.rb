Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  get 'welcome/index'
  get 'welcome/test', as: :test

  get 'feed', to: 'articles#feed', defaults: { format: 'rss' }
  get 'articles/list', to: 'articles#list'
  get 'articles/:uri/content', to: 'articles#content', as: :article_content
  resources :articles, param: :uri
  resources :pages, param: :uri

  # get 'editor', to: 'editor/editor#index', as: :editor
  # namespace :editor do
  #
  # end

  get 'admin', to: 'admin/admin#index', as: :admin
  get 'admin/test', to: 'admin/admin#test', as: :admin_test
  namespace :admin do
    resources :settings
    resources :pages
    resources :articles
  end
end
