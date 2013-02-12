Balasevic::Application.routes.draw do
  resources :subscribers, :only => [:new, :create], :path => '', :path_names => {:new => ''}
end
