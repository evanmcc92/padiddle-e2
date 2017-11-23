Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :padiddle_points
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 
  resources :projects do
    collection do
        get 'search'
    end
  end
  root 'padiddle_points#new'
end
