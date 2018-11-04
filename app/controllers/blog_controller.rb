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
    @stats = setup_stats(@data)
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
      flash[:notice] = I18n.translate "flash.wrong_query"
      return redirect_to blog_search_path
    end

    @council = Council.find(params[:council_id])
    date = Date.new(@period[0].to_i, @period[1].to_i, @period[2].to_i)
    @data = get_data(date, @set, @group, @council)

    if I18n.locale == :en
      @message = craft_message(@group, @set, @period, date) + " for * " + @council.name + " * "
    else 
      @message = craft_message(@group, @set, @period, date) + " pour * " + @council.name + " * "
    end
    
    @mean = mean(@data)
    @stats = setup_stats(@data)
  end

  def day_in_graphs
    @menu = 'day-graphs'
    value = params[:value]
    @map_data1 = []
    @map_data2 = []

    Division.includes({ sub_divisions: :deceaseds }).where(deceaseds: {created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day}).all.each do |division|
      data_set = {}
      division.sub_divisions.each do |sd|
        data_set["#{sd.name}"] = sd.deceaseds.length
      end

      @map_data1.push({ name: division.name, stack: "stack", data: data_set })
    end

    # where(deceaseds: {created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day}).

    Division.includes({ sub_divisions: :new_borns }).where(new_borns: {created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day}).all.each do |division|
      data_set = {}
      division.sub_divisions.each do |sd|
        data_set["#{sd.name}"] = sd.new_borns.length
      end

      @map_data2.push({ name: division.name, data: data_set })
    end

    # .where(new_borns: {created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day})

    respond_to do |format|
      format.html # show.html.erb
      if value == 'deceaseds'
        format.json { render json: @map_data1 }
      elsif value == 'new_borns'
        format.json { render json: @map_data2 }
      end
    end
    # format.json { render json: @user }

    # Council.includes(:deceaseds).all.each do |sd|
    #   @map_data[sd.name] = sd.deceaseds.length + [1, 2, 4, 5].sample
    # end
  end


  private

  def get_data_today(set)
    # set.group_by_hour_of_day(:created_at, format: "%-l %P", range: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, series: false).count

    if I18n.locale == :fr
      set.group_by_hour_of_day(:created_at, format: "%H : %M", range: Time.zone.now.beginning_of_day..Time.zone.now, series: false).count
    else 
      set.group_by_hour_of_day(:created_at, format: "%-l %P", range: Time.zone.now.beginning_of_day..Time.zone.now, series: false).count
    end
  end

  def setup_stats(data)
    data.values.extend(DescriptiveStatistics).descriptive_statistics
    # @stats
  end

end
