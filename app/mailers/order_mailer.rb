class OrderMailer < ApplicationMailer

  def send_email_to_owner params
    @resources = params
    mail(to: "bilalabbas437@gmail.com", subject: "Order Placed at Quick Silver Dry Cleaner")
  end
end