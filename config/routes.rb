Rails.application.routes.draw do
  get 'about-us' => "my_pages#about_us"
  get 'contact-us'=>"my_pages#contact_us"
  get 'privacy-policy'=> "my_pages#privacy_policy"
  root "pages#home"

  resources :employees
  

  get "up" => "rails/health#show", as: :rails_health_check


end
