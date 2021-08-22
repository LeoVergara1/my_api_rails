Rails.application.routes.draw do
  get 'storage/upload'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'greetings/hello'
  post 'storage/upload_file'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
