Rails.application.routes.draw do
  root to: 'transactions#index'

  get 'transactions/index'
  get 'transactions', to: 'transactions#index'
  get 'transactions/charges'
end
