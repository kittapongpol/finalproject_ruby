# app/controllers/concerns/current_user_concern.rb
module CurrentUserConcern
    extend ActiveSupport::Concern
  
    included do
      # ตรวจสอบผู้ใช้จาก session หรือ JWT
      def current_user
        @current_user ||= User.find_by(id: session[:user_id])  # หรือจาก JWT
      end
    end
  end
  