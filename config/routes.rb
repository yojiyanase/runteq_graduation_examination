Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'stocks#index'

  get 'simulations/input_form'
  post 'simulations/calculate', to: 'simulations#calculate' # 重複しているルートを削除
  get 'simulations/result'
end
