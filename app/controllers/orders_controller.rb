class OrdersController < ApplicationController
    def invitation 
      if params
        response = OrderMailer.new_order_email(params[:email]).deliver_now
        render json: {response: response}
      end
    end
  end