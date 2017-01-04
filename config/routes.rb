Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :parser, only: [] do
        collection do
          post :fecher
          get :list
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
