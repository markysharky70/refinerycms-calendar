Refinery::Application.routes.draw do
  resources :events do
    collection do
      get 'archive/:year(/:month)' => 'events#archive', :as => 'archive'
      get 'category/:id' => 'event_categories#show', :as => 'category'
      get 'venue/:id' => 'event_venues#show', :as => 'venue'
    end
  end
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :events, :except => :show
    resources :event_categories, :except => :show
    resources :event_venues, :except => :show
  end
end
