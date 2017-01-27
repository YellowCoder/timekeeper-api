Rails.application.routes.draw do
  # API V1
  scope module: :v1, constraints: ApiConstraint.new(version: 1) do
    resources :graphql, only: :create
  end
end
