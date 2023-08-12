Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'answers#index'
  resources :answers
  get '/input', to: 'answers#input'
  get '/output', to: 'answers#output', as: :output
  get '/correct/:input', to: 'answers#correct', as: :correct
  get '/incorrect/:input', to: 'answers#incorrect', as: :incorrect
end
