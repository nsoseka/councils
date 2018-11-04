class MarriagesController < ApplicationController
  before_action :set_tab, :require_agent, :set_up_council_notifiers

  def index
    @pagy, @marriages = pagy current_agent.council.marriages.order(created_at: "DESC")
    @menu = 'index-m'
    puts ENV['RECAPTCHA_SITE_KEY'], 'work buddy'
  end

  def show
    @marriage = Marriage.find(params[:id])
    @menu = 'index-m'

    @result = 'food'
  end

  def new
    @menu = 'new-m'
    @marriage = Marriage.new
  end

  def create
    @menu = 'new-m'
    @marriage = Marriage.new(marriage_params)

    if @marriage.save
      flash[:notice] = I18n.translate "flash.certificate_added"
      redirect_to marriages_path
      
    else
      render 'marriages/new'
    end
  end

  def divorced 
    @menu = 'divorced'
  end

  def find 
    @menu = 'find-m'
    @search_query = nil
  end

  def search
    @menu = 'find-m'
    @search_query = params[:search_query]

    @pagy, @marriages = pagy Marriage.ransack(husband_or_wife_or_husband_f_or_wife_f_or_husband_m_or_wife_m_or_husband_w_or_wife_w_or_husband_fh_or_wife_fh_cont_any: @search_query.split(' ')).result
  end

  def latest
    @menu = 'latest'
  end

  def set_tab
    @tab = "marriages"
  end 

  private

  def marriage_params
    params.require(:marriage).permit(:council_id, :certificate_number, :husband, :wife, :appearance_date, :husband_db,:husband_pb, :husband_job, :husband_n, :husband_rf,:husband_res, :husband_f, :husband_m, :wife_db, :wife_pb,:wife_job, :wife_n, :wife_rf,:wife_res, :wife_f, :wife_m, :marriage_ownership, :marriage_type, :objections_raised, :husband_fh, :wife_fh, :husband_w, :wife_w, :registrar, :secretary, :drawn_at, :drawn_on)
  end
end



