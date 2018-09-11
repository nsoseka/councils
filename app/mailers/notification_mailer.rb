class NotificationMailer < ApplicationMailer
  default from: "nsosekaworks@gmail.com"

  def marriage_post_notification(agent, marriage)
    @agent = agent 
    @marriage = marriage

    mail(
      to: "#{@agent.email}",
      subject: "I am just happily learning action mailer and resting in Christ")
  end
end
