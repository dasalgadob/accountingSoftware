Rails.application.routes.draw do

  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

  resources :users
  get 'people/autocomplete_city_name'
  resources :invoice_services
  resources :invoices
  resources :services do
    get :autocomplete_auxiliar_number_text,:on => :collection
  end
  resources :cost_centres
  resources :people do
    resources :locations do
      get :autocomplete_city_name, :on => :collection
    end
    resources :phone_numbers
    resources :withholding_tax_locations
  end
  resources :document_types
  resources :countries do
    get :autocomplete_country_name, :on => :collection
    resources :states, shallow: true do
      resources :cities, shallow: true
    end
  end
  #get 'users/new'

  get '/home', to: 'static_pages#home'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact',  to: 'static_pages#contact'

  get '/menu', to: 'static_pages#menu'

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
