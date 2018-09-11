class PagesController < ApplicationController
  before_action do
    redirect_to :root if Rails.env.production?
  end

  layout "pages"
end



