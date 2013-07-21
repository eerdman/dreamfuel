Selfstarter::Application.routes.draw do
  root :to => 'preorder#index'
  match '/preorder'               => 'preorder#index'
  get 'preorder/checkout'
  match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  match '/preorder/prefill'       => 'preorder#prefill'
  match '/preorder/postfill'      => 'preorder#postfill'

  #athletes
  resources :athletes
  match '/athletes/apply' => 'athletes#apply', :as => 'apply'
  match '/athletes/new' => 'athletes#new', :as => 'new'
  match '/athletes/:username' => 'athletes#show'
end
