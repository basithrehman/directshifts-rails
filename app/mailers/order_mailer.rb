class OrderMailer < ApplicationMailer
    def new_order_email(email)
        mail to: email, subject: "You are Invited!!!"
      end
end
