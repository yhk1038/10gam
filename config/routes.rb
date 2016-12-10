Rails.application.routes.draw do
  
  get 'ureply/news'

  get 'ureply/saves'

  get 'ureply/deletes'

  get 'reply/news'

  get 'reply/saves'

  get 'reply/deletes'

  get 'topic/news'

  get 'topic/saves'

  get 'topic/deletes'

  get 'school/news'

  get 'school/saves'

  get 'school/deletes'

  devise_for :users, controllers: {
    # omniauth_callbacks: "users/omniauth_callbacks",
    sessions: 'users/sessions'
  }
  
  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy'
  # end
  
  match "/:controller(/:action(/:id))", :via => [:get, :post]
  root "home#index"
end
