ActionController::Routing::Routes.draw do |map|
  

  map.connect('', {:controller => "welcome", :action => "default"})
 
  map.connect('admin',{:controller => "welcome", :action => "index"})
 
  map.connect('accessdenied', {:controller => "welcome", :action => "accessdenied"})
 
  map.connect('index', {:controller => "welcome", :action => "index"})

  map.connect('termly', {:controller => "welcome", :action => "termly"})

  map.connect('mailing', {:controller => "welcome", :action => "mailing"})

  map.connect('clear_filter', {:controller => "people", :action => "clear_filter"})

  map.connect('help', {:controller => "welcome", :action => "help"})

  map.resources :attendees

  map.resources :lectures

   
  
  map.resources :pcourses

  map.resources :student_programmes

  map.resources :programmes

  map.resources :people
  map.resources :courses
  map.resources :users
  map.resources :institutions
  map.resources :locations
  map.resources :tutorials
  map.resources :groups
  map.resources :tutorial_schedules
  map.resources :willing_tutors
  map.resources :willing_lecturers
  map.resources :email_templates
  map.resources :agatha_emails
  map.resources :agatha_files
  map.resources :maximum_tutorials

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
