Rails.application.routes.draw do
  root 'waffles#list' #root_path
  get 'waffles/new' => 'waffles#new', as: :new_waffle #new_waffle_path

  # create a waffle
  get 'waffles/:id' => 'waffles#detail', as: :waffle
  post 'waffles' => 'waffles#create'

  # update a waffle
  # show the form
  get 'waffles/:id/edit' => 'waffles#edit'
  # patch the form
  patch 'waffles/:id' => 'waffles#update'

  delete 'waffles/:id' => 'waffles#delete'

end
