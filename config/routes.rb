Rails.application.routes.draw do
  namespace :api do
    resources :todos do
      member do
        patch 'assign_tag'
        patch 'delete_tag'
        patch 'update_status'
      end
    end
    get 'tags/todos'
    resources :tags, param: :name, only: [] do
      member do
        get 'todos'
      end
    end
  end
end
