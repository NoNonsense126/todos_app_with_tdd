Rails.application.routes.draw do
  root "todos#index"

  resources :todos, only: [:new, :create, :index] do
    resource :completion, only: [:create, :destroy]
  end

  resource :registration, only: [:new, :create]


  resources :opinions, shallow: true do
    resources :debates, shallow: true, except: :index do
      resources :comments
    end
  end
end



