# class SessionsController < ApplicationController
#     def create
#       user = User.find_by(email: params[:email])
#       if user&.authenticate(params[:password])
#         render json: { user: user, message: "Login successful" }, status: :ok
#       else
#         render json: { message: "Invalid email or password" }, status: :unauthorized
#       end
#     end
#   end

class Api::V1::SessionsController < ApplicationController
    before_action :authenticate_user!
  
    # Action สำหรับดึงข้อมูลของผู้ใช้ที่ล็อกอิน
    def current_user
      render json: { username: current_user.username, email: current_user.email }
    end
  end
  
  