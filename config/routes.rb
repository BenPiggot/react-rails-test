Rails.application.routes.draw do

  root 'home#index'
  
  resources :cards, defaults: {format: :json} do
    member { put :sort }
    resources :tasks, defaults: {format: :json}
  end
end
