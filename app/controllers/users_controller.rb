# class UsersController < ApplicationController
#     def create
#       user = User.new(user_params)
#       if user.save
#         render json: { user: user, message: "User created successfully" }, status: :created
#       else
#         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
#       end
#     end
  
#     private
  
#     def user_params
#       params.require(:user).permit(:name, :email, :password, :password_confirmation)
#     end
#   end
  
# app/controllers/api/users_controller.rb
class Api::UsersController < ApplicationController
  # ตรวจสอบว่า user ล็อกอินอยู่หรือไม่
  before_action :authenticate_user!

  def current_user
    render json: { name: current_user.name, email: current_user.email }  # หรือข้อมูลที่คุณต้องการ
  end
end



  