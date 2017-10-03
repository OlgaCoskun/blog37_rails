Rails.application.routes.draw do
  get 'home/index'

#два способа определения сущности:
#1.get 'contacts' => 'contacts#new'
  #resources :contacts, only: [:create]

#2.способ:
  resources :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
