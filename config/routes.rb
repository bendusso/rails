Rails.application.routes.draw do
 root 'pages#home'

 get "services", to: "pages#articles"

 resources :articles

end
