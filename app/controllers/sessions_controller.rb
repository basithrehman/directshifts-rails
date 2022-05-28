class SessionsController < Devise::SessionsController

    def create
        user = User.find_by_email(params[:user][:email])
        if user.present?
            if user.valid_password?(params[:user][:password])
                render json: {  success: true, user: user, message: 'Authentication successful' } 
            else
                render json: { status: 404, message: "Invalid Password" } 
            end
        else
            render json: { status: 404, message: "User not present, please sign up" } 
        end
      end
end