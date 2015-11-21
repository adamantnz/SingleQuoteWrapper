Rails.application.routes.draw do
  root to: 'pages#home'
  get 'welcome' => 'pages#home'
end
