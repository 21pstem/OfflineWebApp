Rails.application.routes.draw do
 resources :groups_users do
   collection do
     get 'by_evaluator/:id', to: 'groups_users#by_evaluator', as: 'by_evaluator'
   end
 end
 resources :groups_evals do
    collection do
    	get 'by_evaluator/:id', to: 'groups_evals#by_evaluator', as: 'by_evaluator'
    end
  end
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
