# == Route Map
#
#                            Prefix Verb      URI Pattern                              Controller#Action
#                            images GET       /images(.:format)                        images#index
#                                   POST      /images(.:format)                        images#create
#                         new_image GET       /images/new(.:format)                    images#new
#                        edit_image GET       /images/:id/edit(.:format)               images#edit
#                             image GET       /images/:id(.:format)                    images#show
#                                   PATCH     /images/:id(.:format)                    images#update
#                                   PUT       /images/:id(.:format)                    images#update
#                                   DELETE    /images/:id(.:format)                    images#destroy
#                         galleries GET       /galleries(.:format)                     galleries#index
#                                   POST      /galleries(.:format)                     galleries#create
#                       new_gallery GET       /galleries/new(.:format)                 galleries#new
#                      edit_gallery GET       /galleries/:id/edit(.:format)            galleries#edit
#                           gallery GET       /galleries/:id(.:format)                 galleries#show
#                                   PATCH     /galleries/:id(.:format)                 galleries#update
#                                   PUT       /galleries/:id(.:format)                 galleries#update
#                                   DELETE    /galleries/:id(.:format)                 galleries#destroy
#                              home GET       /home(.:format)                          static_pages#home
#                          contacts GET       /contacts(.:format)                      static_pages#contacts
#                             about GET       /about(.:format)                         static_pages#about
#                            _order GET       /order(.:format)                         static_pages#order
#                         userslist GET       /userslist(.:format)                     static_pages#userslist
#                      privatpolicy GET       /privatpolicy(.:format)                  static_pages#privatpolicy
#                         sitetopic GET       /sitetopic(.:format)                     static_pages#sitetopic
#                           catalog GET       /catalog(.:format)                       static_pages#catalog
#                        adminpanel GET       /adminpanel(.:format)                    static_pages#adminpanel
#                           sitemap GET       /sitemap.xml(.:format)                   static_pages#sitemap
#                            robots GET       /robots.txt(.:format)                    static_pages#robots
#                          facebook GET       /facebook(.:format)                      static_pages#facebook
#                         vkontakte GET       /vkontakte(.:format)                     static_pages#vkontakte
#                  new_user_session GET       /users/sign_in(.:format)                 sessions#new
#                      user_session POST      /users/sign_in(.:format)                 sessions#create
#              destroy_user_session GET       /users/sign_out(.:format)                sessions#destroy
#  user_facebook_omniauth_authorize GET|POST  /users/auth/facebook(.:format)           omniauth_callbacks#passthru
#   user_facebook_omniauth_callback GET|POST  /users/auth/facebook/callback(.:format)  omniauth_callbacks#facebook
# user_vkontakte_omniauth_authorize GET|POST  /users/auth/vkontakte(.:format)          omniauth_callbacks#passthru
#  user_vkontakte_omniauth_callback GET|POST  /users/auth/vkontakte/callback(.:format) omniauth_callbacks#vkontakte
#                     user_password POST      /users/password(.:format)                devise/passwords#create
#                 new_user_password GET       /users/password/new(.:format)            devise/passwords#new
#                edit_user_password GET       /users/password/edit(.:format)           devise/passwords#edit
#                                   PATCH     /users/password(.:format)                devise/passwords#update
#                                   PUT       /users/password(.:format)                devise/passwords#update
#          cancel_user_registration GET       /users/cancel(.:format)                  registrations#cancel
#                 user_registration POST      /users(.:format)                         registrations#create
#             new_user_registration GET       /users/sign_up(.:format)                 registrations#new
#            edit_user_registration GET       /users/edit(.:format)                    registrations#edit
#                                   PATCH     /users(.:format)                         registrations#update
#                                   PUT       /users(.:format)                         registrations#update
#                                   DELETE    /users(.:format)                         registrations#destroy
#                             users GET       /users(.:format)                         users#index
#                                   POST      /users(.:format)                         users#create
#                          new_user GET       /users/new(.:format)                     users#new
#                         edit_user GET       /users/:id/edit(.:format)                users#edit
#                              user GET       /users/:id(.:format)                     users#show
#                                   PATCH     /users/:id(.:format)                     users#update
#                                   PUT       /users/:id(.:format)                     users#update
#                                   DELETE    /users/:id(.:format)                     users#destroy
#                    remote_sign_up GET       /remote_sign_up(.:format)                remote_content#remote_sign_up
#                    remote_sign_in GET       /remote_sign_in(.:format)                remote_content#remote_sign_in
#                     finish_signup GET|PATCH /users/:id/finish_signup(.:format)       users#finish_signup
#           session_update_category GET       /categories/:id/session_update(.:format) categories#session_update
#                  catalog_category GET       /categories/:id/catalog(.:format)        categories#catalog
#              temp_update_category POST      /categories/:id/temp_update(.:format)    categories#temp_update
#                                   PATCH     /categories/:id/temp_update(.:format)    categories#temp_update
#                        categories GET       /categories(.:format)                    categories#index
#                                   POST      /categories(.:format)                    categories#create
#                      new_category GET       /categories/new(.:format)                categories#new
#                     edit_category GET       /categories/:id/edit(.:format)           categories#edit
#                          category GET       /categories/:id(.:format)                categories#show
#                                   PATCH     /categories/:id(.:format)                categories#update
#                                   PUT       /categories/:id(.:format)                categories#update
#                                   DELETE    /categories/:id(.:format)                categories#destroy
#                          sign_out GET       /sign_out(.:format)                      devise/sessions#destroy
#                              root GET       /                                        static_pages#home
#                        refile_app           /attachments                             #<Refile::App app_file="/var/lib/gems/2.3.0/gems/refile-0.6.2/lib/refile/app.rb">
#                    entypo_charmap GET       /entypo/charmap(.:format)                entypo/charmap#index
#

Rails.application.routes.draw do
  resources :images
  resources :galleries

  get 'home' => 'static_pages#home', :as => 'home'
  get 'contacts' => 'static_pages#contacts', :as => 'contacts'
  get 'about' => 'static_pages#about', :as => 'about'
  get 'order' => 'static_pages#order', :as => '_order'
  get 'userslist' => 'static_pages#userslist', :as => 'userslist'
  get 'privatpolicy' => 'static_pages#privatpolicy', :as => 'privatpolicy'
  get 'sitetopic' => 'static_pages#sitetopic', :as => 'sitetopic'
  get 'catalog' => 'static_pages#catalog', :as => 'catalog'
  get 'adminpanel' => 'static_pages#adminpanel', :as => 'adminpanel'
  get "sitemap.xml" => "static_pages#sitemap", format: :xml, as: :sitemap
  get "robots.txt" => "static_pages#robots", format: :text, as: :robots
  get 'facebook' => 'static_pages#facebook', :as => 'facebook'
  get 'vkontakte' => 'static_pages#vkontakte', :as => 'vkontakte'

  devise_for :users, :controllers => { registrations: 'registrations',
                                       omniauth_callbacks: 'omniauth_callbacks', sessions: 'sessions' }
  resources :users

  match 'remote_sign_up', to: 'remote_content#remote_sign_up', via: [:get]
  match 'remote_sign_in', to: 'remote_content#remote_sign_in', via: [:get]

  match '/users/:id/finish_signup' => 'users#finish_signup',
        via: [:get, :patch], as: :finish_signup

  resources :categories do
    member do
      get :session_update
      get :catalog
      post :temp_update
      patch :temp_update
    end
  end

  devise_scope :user do
    get "sign_out", to: "devise/sessions#destroy"
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'static_pages#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
