# app/controllers/api/users_controller.rb
class Api::UsersController < ApplicationController
  # ตรวจสอบว่า user ล็อกอินอยู่หรือไม่
  before_action :authenticate_user!

  def current_user
    render json: { name: current_user.name, email: current_user.email }  # หรือข้อมูลที่คุณต้องการ
  end
end
