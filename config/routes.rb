Rails.application.routes.draw do
  get 'residential/index'
  get 'residential/data', :defaults => { :format => 'json'}
  root :to => 'residential#index'

  get 'residential/bar_chart'
  get 'residential/bar_data', :defaults => { :format => 'json' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'residential/scatter_chart'
  get 'residential/scatter_data', :defaults => { :format => 'json' }
end
