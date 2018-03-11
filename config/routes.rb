Rails.application.routes.draw do
	resources :books, :except => :destroy
	get '/top' => 'books#top'

  get 'books/index'

  get 'books/show'

  get 'books/edit'

  delete '/books/:id' => 'books#destroy', as: 'destroy_book'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
