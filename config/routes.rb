Rails.application.routes.draw do
  root "news#home"

  get 'news/home'
  get 'news/new'
  post 'news/create'
  patch 'news/update'
  get 'news/home'
  get 'news/show'
  get 'news/edit'
  get 'news/delete'
  get 'news/update'
  get 'news/show_categories'

  #search
  resources :news do
    collection do
      get 'search'
    end
  end

  #comment
  get "/news/:id", to: "news#show"
  resources :news do resources :comments
  end

  #category create, edit and delete
  resources :categories, only: [:new, :create, :edit, :update, :destroy, :index]

  namespace :admin do
    resources :news do
      member do
        patch 'hide_unhide'  # route to hide/unhide news
      end
    end
  end

end
