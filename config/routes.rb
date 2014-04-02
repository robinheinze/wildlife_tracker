WildlifeTracker::Application.routes.draw do
  # match('/', {:via => :get, :to => 'species#index'})
  root to: "species#index"
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})


  match('sightings', {:via => :get, :to => 'sightings#index'})

  match('species/:species_id/sightings', {:via => :post, :to => 'sightings#create'})
  match('species/:species_id/sightings/new' , {:via => :get, :to => 'sightings#new'})
  match('species/:species_id/sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('species/:species_id/sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('species/:species_id/sightings/:id', {:via => :delete, :to => 'sightings#destroy'})

  match('regions', {:via => :get, :to => 'regions#new'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})
  match('regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})

end
