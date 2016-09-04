Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  	resources :marketlists
	resources :recipes

root'recipes#index'
#root command determines what the user first sees
#goes to post controller ndex action
#change this to start screen late

end
