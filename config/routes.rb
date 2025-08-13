Rails.application.routes.draw do
  get "/involvements", to:"involvements#index"
  get "/activities", to:"activities#index"
  get "/percentages", to:"percentages#index"
  get "/lectures", to:"lectures#index"
  get "/subjects", to:"subjects#index"
  get "/grades", to: "grades#index"
  get "/students", to:"students#index"
  get "/dashboards", to:"dashboards#index"

  post 'dashboards/set_selected_subject', to: "dashboards#set_selected_subject", as:"view_set_selected_subject"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "dashboards#index"
end
