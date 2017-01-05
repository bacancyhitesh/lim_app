Rails.application.routes.draw do
  apipie
  namespace :api do
    namespace :v1 do
      resources :parser, only: [] do
        collection do
          post :fetcher
          get :parsed_urls
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
