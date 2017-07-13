Rails.application.routes.draw do
  seems_rateable
  resources :resturants do
    member do
      resources :menus
    end
  end
  root to: 'resturants#index'
end
