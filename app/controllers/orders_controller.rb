class OrdersController < ApplicationController
    def invitation 
      if params
        OrderMailer.new_order_email(params[:email]).deliver_now
      end
    end
  end