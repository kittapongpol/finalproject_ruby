Rails.application.routes.draw do
  resources :users, only: [:create]
  post 'login', to: 'sessions#create'

  # เส้นทางใหม่สำหรับดึงข้อมูลของผู้ใช้ที่ล็อกอิน
  get '/current_user', to: 'users#current_user'
end
