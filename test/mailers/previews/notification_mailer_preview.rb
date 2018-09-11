# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
  def marriage_post_notification
    NotificationMailer.marriage_post_notification(Agent.first, Marriage.first).deliver_now
  end
end
