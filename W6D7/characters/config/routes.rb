Rails.application.routes.draw do
 resources :characters do
  resources :weapons
 end
 

end
