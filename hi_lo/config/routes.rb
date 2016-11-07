Rails.application.routes.draw do
  root 'game#play'

  post 'game/start' => 'game#start'

  get 'game/play' => 'game#play'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
