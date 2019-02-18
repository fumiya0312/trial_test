Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
    resources :blogs, only: [:new, :index ,:create, :show, :edit, :destroy] do
      resources :entries, only: [:new, :create, :show, :edit, :destroy] do
        resources :comments, only: [:create, :update, :destroy]
      end
    end
  #  if Rails.env.development?
  #   mount LetterOpener::Engine, at: '/letter_opener'
  # end
end
