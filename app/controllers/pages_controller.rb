class PagesController < ApplicationController
  layout "pages"

  def front 
    locale = params[:locale]

    # puts locale, locale.nil?, "what says"

    if !locale.nil?
      I18n.locale = :fr if locale == "fr"
      I18n.locale = :en if locale == "en"
    end
  end
end



