Rails.application.routes.draw do
 root 'weather#index'

  get 'weather/rain'

  get 'weather/saved'

  
end
