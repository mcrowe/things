Things::Application.routes.draw do

  root to: 'main#index'

  scope 'api' do
    resources :tasks
  end

end