class UserMailer < ApplicationMailer::Base

default from: "notification@email.com"

def order_confirmation(user, order)
  @user = user
  @order = order
  mail(to: user.email, subject: "Order has been received")

end
end