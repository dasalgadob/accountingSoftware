Rails.application.routes.draw do






  resources :countries do
    resources :states, shallow: true do
      resources :cities, shallow: true
    end
  end
  get 'users/new'

  get '/home', to: 'static_pages#home'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact',  to: 'static_pages#contact'

  ##The shallow nesting allows to avoid complex urls in the app
  resources :clases do
    resources :grupos, shallow: true do
      resources :accounts, shallow: true do
        resources :subaccounts, shallow: true do
          resources :auxiliars, shallow: true
        end
      end
    end
  end

  root 'static_pages#home'

  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
