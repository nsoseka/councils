class StatisticsController < ApplicationController
  HOSPITAL_STATS = [
    :new_borns_day, :new_borns_week, :new_borns_month, :new_borns_year, 
    :deceaseds_day, :deceaseds_week, :deceaseds_month, :deceaseds_year,
    :unit_search, :unit_find]

  before_action :set_tab
  before_action :require_agent, :set_up_council_notifiers, except: HOSPITAL_STATS
  before_action :require_hospital, only: HOSPITAL_STATS

  include StatisticsAnalyzer

  layout :resolve_layout

  def deaths_day
    @menu = 'd-stats'
    @data = days_data current_agent.council.deceaseds
    @mean = mean(@data)
  end

  def deaths_week
    @menu = 'd-stats'
    @data = weeks_data current_agent.council.deceaseds
    @mean = mean(@data)
  end

   def deaths_month
    @menu = 'd-stats'
    @data = months_data current_agent.council.deceaseds
    @mean = mean(@data)
  end

  def deaths_year
    @menu = 'd-stats'
    @data = years_data current_agent.council.deceaseds
    @mean = mean(@data)
  end

  def births_day
    @menu = 'b-stats'
    @data = days_data current_agent.council.new_borns
    @mean = mean(@data)
  end

  def births_week
    @menu = 'b-stats'
    @data = weeks_data current_agent.council.new_borns
    @mean = mean(@data)
  end

  def births_month
    @menu = 'b-stats'
    @data = months_data current_agent.council.new_borns
    @mean = mean(@data)
  end

  def births_year
    @menu = 'b-stats'
    @data = years_data current_agent.council.new_borns
    @mean = mean(@data)
  end

  def marriages_week
    @menu = 'm-stats'
    @data = weeks_data current_agent.council.marriages
    @mean = mean(@data)
  end

  def marriages_month
    @menu = 'm-stats'
    @data = months_data current_agent.council.marriages
    @mean = mean(@data)
  end
  
  def marriages_year
    @menu = 'm-stats'
    @data = years_data current_agent.council.marriages
    @mean = mean(@data)
  end

  def search
    @menu = 's-stats'
    @message = params[:message]
  end

  def find
    @menu = 's-stats'
    @set = params['set']
    @group = params['group']
    @period = params[:period].split(',')

    if invalid_params?(@period, @set, @group)
      flash[:notice] = 'Your search queries are either wrong or poorly formatted'
      return redirect_to search_path
    end

    date = Date.new(@period[0].to_i, @period[1].to_i, @period[2].to_i)
    @data = get_data(date, @set, @group, current_agent.council)
    @message = craft_message(@group, @set, @period, date)

    @mean = mean(@data)
  end

  def deceaseds_day
    @menu = 'd-stats'
    @data = days_data current_hospital.deceaseds
    @mean = mean(@data)
  end

  def deceaseds_week
    @menu = 'd-stats'
    @data = weeks_data current_hospital.deceaseds
    @mean = mean(@data)
  end

   def deceaseds_month
    @menu = 'd-stats'
    @data = months_data current_hospital.deceaseds
    @mean = mean(@data)
  end

  def deceaseds_year
    @menu = 'd-stats'
    @data = years_data current_hospital.deceaseds
    @mean = mean(@data)
  end

  def new_borns_day
    @menu = 'b-stats'
    @data = days_data current_hospital.new_borns
    @mean = mean(@data)
  end

  def new_borns_week
    @menu = 'b-stats'
    @data = weeks_data current_hospital.new_borns
    @mean = mean(@data)
  end

  def new_borns_month
    @menu = 'b-stats'
    @data = months_data current_hospital.new_borns
    @mean = mean(@data)
  end

  def new_borns_year
    @menu = 'b-stats'
    @data = years_data current_hospital.new_borns
    @mean = mean(@data)
  end

  def unit_search
    @menu = 's-stats'
  end 

  def unit_find 
    @menu = 's-stats'
    @set = params['set']
    @group = params['group']
    @period = params[:period].split(',')

    if invalid_params?(@period, @set, @group)
      flash[:notice] = 'Your search queries are either wrong or poorly formatted'
      return redirect_to search_path
    end

    date = Date.new(@period[0].to_i, @period[1].to_i, @period[2].to_i)
    @data = get_data(date, @set, @group, current_hospital)
    @message = craft_message(@group, @set, @period, date)

    @mean = mean(@data)
  end

  private

  def set_tab
    @tab = 'stats'
  end

  def resolve_layout
    case
    when HOSPITAL_STATS.map { |action| action.to_s }.include?(action_name)
      "hospital"
    else
      "application"
    end
  end
end
