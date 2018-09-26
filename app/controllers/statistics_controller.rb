# require 'descriptive_statistics/refinement'

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
    @data = days_data current_agent.council.deceaseds.today
    @stats = setup_stats(@data)
    @chosen = 'day'
    render 'death_stats'
  end

  def deaths_week
    @menu = 'd-stats'
    @data = weeks_data current_agent.council.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'week'
    render 'death_stats'
  end

   def deaths_month
    @menu = 'd-stats'
    @data = months_data current_agent.council.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'month'
    render 'death_stats'
  end

  def deaths_year
    @menu = 'd-stats'
    @data = years_data current_agent.council.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'year'
    render 'death_stats'
  end

  def births_day
    @menu = 'b-stats'
    @data = days_data current_agent.council.new_borns.today
    @stats = setup_stats(@data)
    @chosen = 'day'
    render 'birth_stats'
  end

  def births_week
    @menu = 'b-stats'
    @data = weeks_data current_agent.council.new_borns
    @stats = setup_stats(@data)
    @chosen = 'week'
    render 'birth_stats'
  end

  def births_month
    @menu = 'b-stats'
    @data = months_data current_agent.council.new_borns
    @stats = setup_stats(@data)
    @chosen = 'month'
    render 'birth_stats'
  end

  def births_year
    @menu = 'b-stats'
    @data = years_data current_agent.council.new_borns
    @stats = setup_stats(@data)
    @chosen = 'year'
    render 'birth_stats'
  end

  def marriages_week
    @menu = 'm-stats'
    @data = weeks_data current_agent.council.marriages
    @stats = setup_stats(@data)
    @chosen = 'week'
    render 'marriage_stats'
  end

  def marriages_month
    @menu = 'm-stats'
    @data = months_data current_agent.council.marriages
    @stats = setup_stats(@data)
    @chosen = 'month'
    render 'marriage_stats'
  end
  
  def marriages_year
    @menu = 'm-stats'
    @data = years_data current_agent.council.marriages
    @stats = setup_stats(@data)
    @chosen = 'year'
    render 'marriage_stats'
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

    @stats = setup_stats(@data)
  end

  def deceaseds_day
    @menu = 'd-stats'
    @data = days_data current_hospital.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'day'
    render 'deceased_stats'
  end

  def deceaseds_week
    @menu = 'd-stats'
    @data = weeks_data current_hospital.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'week'
    render 'deceased_stats'
  end

   def deceaseds_month
    @menu = 'd-stats'
    @data = months_data current_hospital.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'month'
    render 'deceased_stats'
  end

  def deceaseds_year
    @menu = 'd-stats'
    @data = years_data current_hospital.deceaseds
    @stats = setup_stats(@data)
    @chosen = 'year'
    render 'deceased_stats'
  end

  def new_borns_day
    @menu = 'b-stats'
    @data = days_data current_hospital.new_borns
    @stats = setup_stats(@data)
    @chosen = 'day'
    render 'new_born_stats'
  end

  def new_borns_week
    @menu = 'b-stats'
    @data = weeks_data current_hospital.new_borns
    @stats = setup_stats(@data)
    @chosen = 'week'
    render 'new_born_stats'
  end

  def new_borns_month
    @menu = 'b-stats'
    @data = months_data current_hospital.new_borns
    @stats = setup_stats(@data)
    @chosen = 'month'
    render 'new_born_stats'
  end

  def new_borns_year
    @menu = 'b-stats'
    @data = years_data current_hospital.new_borns
    @stats = setup_stats(@data)
    @chosen = 'year'
    render 'new_born_stats'
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
    @stats = setup_stats(@data)
  end

  private

  def set_tab
    @tab = 'stats'
  end

  def setup_stats(data)
    @stats = data.values.extend(DescriptiveStatistics).descriptive_statistics
    @stats
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
