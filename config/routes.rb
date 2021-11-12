Rails.application.routes.draw do
  get 'service/shirts'
  get 'service/dry_cleaning'
  get 'service/household_linen'
  get 'service/repairs_alterations'
  get 'service/wedding_dress_cleaning'
  get 'service/leather_suede'
  get 'service/laundry_service'
  get 'service/collection_delivery'
  root to: 'home#index'
  get "/pricing" => 'home#pricing'
  resources :home do
    collection do
      post :place_order
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
