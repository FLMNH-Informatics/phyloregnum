Regnum::Application.routes.draw do
  
  match '/' => 'search#index'
  match '/logout' => 'accounts#logout', :as => :logout
  match '/login' => 'accounts#login', :as => :login
  match '/authenticate' => 'accounts#authenticate', :as => :authenticate
  match '/signup' => 'accounts#new', :as => :signup
  match '/mysubmission_show' => 'my_submission#show', :as => :mysubmission
  match '/admin_show' => 'admin#show', :as => :admin
  match '/new_submission' => 'my_submission#new', :as => :new_submission
  match '/create_submission' => 'my_submission#new', :as => :create_submission
  match '/accepted' => 'my_submission#accepted', :as => :accepted
  match '/cladename' => 'my_submission#cladename', :as => :cladename
  match '/save' => 'my_submission#save', :as => :save
  
  match '/faq' => 'application#faq', :as => :faq

  match '/search' => 'search#index', :as => :search
  match '/search/:id' => 'search#show', :as => :show
  match '/search_res' => 'search#search_res', :as => :search_res

  match '/save_submission' => 'my_submission#save_submission', as: :save_submission
  match '/name/:id' => 'cladename#find_name', :as => :name

  match '/my_submission' => 'my_submission#index', :as => :my_submission
  match '/my_submission/new' => 'my_submission#new', :as => :new
  match '/my_submission/template' => 'my_submission#template', :as => :template
  match '/my_submission/add_attachment' => 'my_submission#add_attachment', :as => :add_attachment
  match '/my_submission/view_attachment/:id' => 'my_submission#view_attachment', :as => :view_attachment
  match '/my_submission/remove_attachment/:id' => 'my_submission#remove_attachment', :as => :remove_attachment
  match '/my_submission/delete/:id' => 'my_submission#delete', :as => :delete
  #this one comes last so my_submission method calls can pass
  match '/my_submission/:id' => 'my_submission#show', :as => :show_my_submission  
  match '/templates/load' => 'templates#load', :as => :load_template
  #
  match '/admin' => 'admin#index', :as => :admin
  match '/admin/add_user' => 'admin#add_user', :as => :add_user_admin
  #
  match '/admin/users/:id' => 'admin#edit_user'
  match '/admin/update_user/:id' => 'admin#update_user', :as => :update_user
  #
  match '/phenotypes' => 'phenotypes#index', :as => :phenotypes
  match '/phenotypes/create' => 'phenotypes#create' 
  match '/phenotypes/import_ontologies' => 'phenotypes#import_ontologies'
  #match '/phenotypes/new/:state_id' => 'phenotypes#new'
  match '/phenotypes/new' => 'phenotypes#new'
  match '/phenotypes/get_form_fields' => 'phenotypes#get_form_fields'
  match '/characters/new' => 'phenotypes#new_character'
  match '/characters/create_character' => 'phenotypes#create_character'
  match '/characters/destroy_character' => 'phenotypes#destroy_character'
  match '/characters/destroy_state' => 'phenotypes#destroy_state'
  match '/characters/destroy_phenotype' => 'phenotypes#destroy_phenotype'
  match '/characters/:character_id/states/new' => 'phenotypes#new_state'
  match '/characters/:character_id/states' => 'phenotypes#create_state' , :via => [:post]
  match '/ontologies/auto_complete_terms' => 'ontologies#auto_complete_terms'
  resources :accounts
  resources :submissions

  #match '/:controller(/:action(/:id))'
end
