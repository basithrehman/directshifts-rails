class RegistrationsController < Devise::SessionsController
    respond_to :json

def create
    if !User.find_by_email(params[:user][:email])
      user = User.create(email: params[:user][:email], password: params[:user][:password])
      render json: { status: 201, message: "User Created Successfully" } 
    else
        render json: { status: 404, message: "User Already exists" } 
    end
  end
end