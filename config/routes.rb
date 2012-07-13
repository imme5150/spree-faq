Spree::Core::Engine.routes.prepend do
  match :faq, :to => 'faqs#index', :as => 'faq'
  match '/faq/:category', :to => 'faqs#show', :as => 'faq_category'

  namespace :admin do 
    resources :question_categories do
      collection do
        post :update_positions
      end
    end
  end
end
