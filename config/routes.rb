AirbrakeCrashDemo2::Application.routes.draw do
  root to: 'welcome#index'
  get '/boom' => 'welcome#boom'
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
