Rails.application.routes.draw do

  # , except: :new
    devise_for :users
    root 'hostelp#index'
    resources :hostelp, only: :index
    resources :users, only: :show
    resources :rooms do
        
      collection do
        post 'confirm'
      end
      resources :items
    end
      

    resources :directions #使ってない


    get  'rooms/:user_name/:id'      =>  'rooms#guest_show'
    get  'items/new/:id'              =>'items#new'

        #外部公開用にパスからキーを引っ張る
end
