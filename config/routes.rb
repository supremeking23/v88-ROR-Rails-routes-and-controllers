Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "greetings/hello"
  get 'hello' => 'greetings#hello'
  get 'say/hello' => 'greetings#say_hello'
  get 'say/hello/joe' => 'greetings#hello_joe'
  get 'say/hello/michael' => 'greetings#hello_michael'
  get 'times' => 'greetings#times'

  get 'times/restart' => 'greetings#restart'
  root "greetings#index"

  
end
