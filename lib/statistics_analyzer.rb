module StatisticsAnalyzer
  TIME_ZONE = "West Central Africa"

  def craft_message(group, set, period, date)
    if group == 'day'
      "#{set.gsub('s', '').capitalize} statitics for the #{period[2]} of #{period.join(',')}"
    elsif group == 'week'
      "#{set.gsub('s', '').capitalize} statitics for the #{date.cweek} week of #{period.join(',')}"
    elsif group == 'month'
      "#{set.gsub('s', '').capitalize} statitics for the #{period[1]} month of #{period.join(',')}"
    elsif group == 'year'
      "#{set.gsub('s', '').capitalize} statitics for the year #{period[0]}"
    end
  end

  def invalid_params?(period, set, group)
    (!Date.valid_date? period[0].to_i, period[1].to_i, period[2].to_i) || !(['births', 'deaths', 'marriages'].include?(set) && ['day', 'month', 'week', 'year'].include?(group))
  end

  def get_dataset(set, unit)
    if set == 'births'
      unit.new_borns
    elsif set == 'deaths'
      unit.deceaseds
    elsif set == 'marriages'
      unit.marriages
    end
    # current_agent.council.births
  end

  def get_data(date, set, group, unit)
    Groupdate.time_zone = TIME_ZONE
    set = get_dataset(set, unit)
    if group == 'day'
      set.group_by_hour_of_day(:created_at, format: "%-l %P", range: date.beginning_of_day..date.end_of_day).count
    elsif group == 'week'
      set.group_by_day(:created_at, range: date.beginning_of_week..date.end_of_week).count
    elsif group == 'month'
      set.group_by_day(:created_at, range: date.beginning_of_month..date.end_of_month).count
    elsif group == 'year'
      set.group_by_month(:created_at, range: date.beginning_of_year..date.end_of_year).count
    end
  end

  def mean(set)
    return 0 if set.empty?
     total_values(set) / set.size.to_f
  end

  def total_values(set)
    set.values.reduce(:+)
  end

  def median(set)
    sorted_set = set.values.sort { |a, b| b <=> a }
    return set.size % 2 == 0 ? sorted_set.first(2).reduce(:+).to_f / 2 : sorted_set.first
  end

  def days_data(set)
    Groupdate.time_zone = TIME_ZONE
    set.group_by_hour_of_day(:created_at, format: "%-l %P", range: Time.zone.now.beginning_of_day..Time.zone.now, series: false).count
  end

  def weeks_data(set)
    Groupdate.time_zone = TIME_ZONE
    set.group_by_day(:created_at, last: Date.today.cwday).count
  end

  def months_data(set)
    Groupdate.time_zone = TIME_ZONE
    set.group_by_day(:created_at, range: Date.new(Date.today.year, Date.today.month, 1)..Time.now).count
  end

  def years_data(set)
    Groupdate.time_zone = TIME_ZONE
    set.group_by_month(:created_at, range: Date.new(Date.today.year, 1, 1)..Time.now, series: false).count
  end
end
