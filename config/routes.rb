Rails.application.routes.draw do
  get 'weather/index'

  get 'weather/umbrella'

  get 'weather/noumbrella'

  root 'weather#index'
end
