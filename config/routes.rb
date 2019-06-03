Rails.application.routes.draw do
    root 'suggestions#index'
    resources :suggestions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
