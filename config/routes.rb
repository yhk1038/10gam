Rails.application.routes.draw do
  get 'test/index'

  get 'util/take_school_list'

  get 'home/index'
  get 'home/list'

  match "/:controller(/:action(/:id))", :via => [:get, :post]
end
