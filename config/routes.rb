Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [:edit, :update, :destroy] do

      resources :doses, only: [:new, :create]

  end
  delete 'doses/:id', to: 'doses#destroy'
end
