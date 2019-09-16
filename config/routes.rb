Rails.application.routes.draw do
 
 #gets an array of any evaluation assignments for the user.
 get '/groups_users/by_evaluator/:user_id', to: 'groups_users#by_evaluator', as: 'by_evaluator' 

 resources :groups_evals do
    collection do
    	get 'by_evaluator/:id', to: 'groups_evals#by_evaluator', as: 'by_evaluator'
    end
  end
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
