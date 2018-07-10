Rails.application.routes.draw do
  #get 'articulos/new'
  get 'articulos/index'
  resources:articulos

  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
