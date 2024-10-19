Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'simulations', to: 'simulations#index'

  get 'simulations/input_form'

end
