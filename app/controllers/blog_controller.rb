class BlogController < ApplicationController
  include StatisticsAnalyzer

  def home 
    @menu = 'blog-home'
  end

  def todays_deaths
    @menu = 'blog-deaths'
    @data = get_data_today(Deceased.today)
    @stats = setup_stats(@data)
    @mean = mean(@data)
  end

  def todays_births
    @menu = 'blog-births'
    @data = get_data_today(NewBorn.today)
    @stats = setup_stats(@data)
    @mean = mean(@data) 
  end

  def todays_marriages
    @menu = 'blog-marriages'
    @data = get_data_today(Marriage.all)
    @mean = mean(@data)
  end

  def search 
    @menu = 'blog-search'
  end

  def find 
    @menu = 'blog-search'
    @set = params['set']
    @group = params['group']
    @period = params[:period].split(',')

    if invalid_params?(@period, @set, @group) || params[:council_id] == '88888888'
      flash[:notice] = 'Your search queries are either wrong or poorly formatted'
      return redirect_to blog_search_path
    end

    @council = Council.find(params[:council_id])
    date = Date.new(@period[0].to_i, @period[1].to_i, @period[2].to_i)
    @data = get_data(date, @set, @group, @council)
    @message = craft_message(@group, @set, @period, date) + ' for ' + @council.name
    
    @mean = mean(@data)
    @stats = setup_stats(@data)
  end

  private

  def get_data_today(set)
    set.group_by_hour_of_day(:created_at, format: "%-l %P", range: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).count
  end

  def setup_stats(data)
    @stats = data.values.extend(DescriptiveStatistics).descriptive_statistics
    @stats
  end
end
