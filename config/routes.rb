Rails.application.routes.draw do
	resources :recipes

root'recipes#index'
#root command determines what the user first sees
#goes to post controller ndex action
#change this to start screen late

end
