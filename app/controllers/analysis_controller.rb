class AnalysisController < ApplicationController 
  before_action :require_agent_or_hospital, :council_handler, :set_tab

  include StatisticsAnalyzer

  layout :resolve_layout

  def infant_health
    @menu = 'infant_health'
    @stats = {
      art: 0, fsb: 0, msb: 0, full_term: 0, pre_term: 0, post_term: 0, abnormalities: 0, total: 0,
      resuscitation_dg: 0, resuscitation_db: 0, resuscitation_nd: 0, sum_agpar_1: 0, sum_agpar_5: 0,
      sum_weight: 0, sum_head_circumference: 0, sum_length: 0, agpar_scor_1_above: 0, agpar_scor_5_above: 0 }

    if current_hospital
      current_hospital.infant_healths.find_each do |infant_health|
        infant_health_analyzer(infant_health)
      end
    elsif current_agent
      current_agent.council.infant_healths.find_each do |infant_health|
        infant_health_analyzer(infant_health)
      end
    end

    @stats[:total] = @stats[:total] == 0 ? 1 : @stats[:total]
    @stats[:average_agpar_scor_1] = (@stats[:sum_agpar_1] / @stats[:total]) 
    @stats[:average_agpar_scor_5] = (@stats[:sum_agpar_5] / @stats[:total])
    @stats[:average_length] = (@stats[:sum_length] / @stats[:total])
    @stats[:average_weight] = (@stats[:sum_weight] / @stats[:total])
    @stats[:average_head_circumference] = (@stats[:sum_head_circumference] / @stats[:total])
    @stats[:total] = @stats[:total] == 0 ? 1 : @stats[:total]
  end

  def maternal_health
    @menu = 'maternal_health'
    @stats = { total: 0,
      teenage_pregnancy: 0, high_risk_pregnancy: 0, doctor: 0, midwife: 0, out_of_health_facility: 0,
      sum_gestational_age: 0, post_mature: 0, pre_mature: 0, sum_labour_duration: 0, spontaneous: 0, induced: 0,
      episiotomy: 0, atonic: 0, placenta: 0, membranes: 0, sutures: 0, normal_birth: 0, cs: 0, assisted: 0, 
      breech: 0, other_birth: 0, matthews_duncan: 0, cord: 0, blood_loss: 0, haemorrhage: 0, laceration: 0,
      mothers_health: 0, post_partum_complications: 0 }
    
    if current_hospital
      current_hospital.maternal_healths.includes(:new_born).find_each do |maternal_health|
        maternal_health_analyzer(maternal_health)
      end
    elsif current_agent
      current_agent.council.maternal_healths.find_each do |maternal_health|
        maternal_health_analyzer(maternal_health)
      end
    end

    @stats[:total] = @stats[:total] == 0 ? 1 : @stats[:total]
  end

  def death
    @chosen = params[:set]
    @menu = 'death'
    @stats = {
      neonatal: 0,
      infant_deaths: 0, # 0 - 2
      under_five_deaths: 0, # 0 - 5
      children: 0, # 5 - 12
      teenage_deaths: 0, # 13 - 19
      early_adult_deaths: 0, # 20 - 35
      middle_adult_deaths: 0, # 35 - 60
      later_adults_deaths: 0, # 60 - 75
      old_adults: 0, # 75 ->
    }

    @causes = {} 
    @total = 0

    if current_hospital
      if @chosen == "all"
        current_hospital.cause_of_deaths.find_each do |cause|
          death_analyzer(cause)
        end
      else 
        current_hospital.cause_of_deaths.where(sex: @chosen).find_each do |cause|
          death_analyzer(cause)
        end
      end
    elsif current_agent
      if @chosen == "all"
        current_agent.council.cause_of_deaths.find_each do |cause|
          death_analyzer(cause)
        end
      else
        current_agent.council.cause_of_deaths.where(sex: @chosen).find_each do |cause|
          death_analyzer(cause)
        end
      end
    end

    puts CauseOfDeath.all.top([:sex, :cause]), @stats
  end

  def appointments
    @menu = 'appointments'
    if current_hospital
      missed = Appointment.where(hospital: current_hospital, kept: false).where('date < ?', Date.today).length
      honoured = Appointment.where(hospital: current_hospital, kept: true).where('date < ?', Date.today).length
    elsif current_agent
      missed = current_agent.council.appointments.where(kept: false).where('date < ?', Date.today).length
      honoured = current_agent.council.appointments.where(kept: true).where('date < ?', Date.today).length
    end

    @stats = { missed: missed, honoured: honoured }
  end

  def forecast
    # puts current_hospital.maternal_healths.order("DATE(created_at)").group("DATE(created_at)").sum(:blood_loss)
    @menu = "forecast"
    @blood = {}
    if current_hospital
      @deaths = current_hospital.deceaseds.group_by_day(:created_at, range: 30.days.ago..1.day.ago).count
      @births = current_hospital.new_borns.group_by_day(:created_at, range: 30.days.ago..1.day.ago).count
      @blood = current_hospital.maternal_healths.group("DATE(created_at)").sum(:blood_loss)
    elsif current_agent
      @deaths = current_agent.council.deceaseds.group_by_day(:created_at, range: 30.days.ago..1.day.ago).count
      @births = current_agent.council.new_borns.group_by_day(:created_at, range: 30.days.ago..1.day.ago).count
    end

    puts @blood, "young blood here boss"

    begin
      @births_forecast =  @births.size < 10 ? {} : rounder(Trend.forecast(@births, count: 7))
      @deaths_forecast =  @deaths.size < 10 ? {} : rounder(Trend.forecast(@deaths, count: 7))
      @blood_forecast = @blood.size < 10 ? {} : rounder(Trend.forecast(@blood, count: 7))
    rescue => exception
      puts "errors occurring"
      @error = "server_busy"
      puts @error, "is this being set"
    end
  end

  def causes_of_death 
    @causes = {}
    @menu = "causes-of-death"

    if current_hospital
      @causes = current_hospital.cause_of_deaths.group(:cause).count
    elsif current_agent
      @causes = current_agent.council.cause_of_deaths.group(:cause).count
    end
  end

  def birth_defects 
    @menu = "defects"
    @defects = {}
    if current_hospital
      @defects = current_hospital.infant_healths.group(:abnormalities).count
    elsif current_agent
      @defects = current_agent.council.infant_healths.group(:abnormalities).count
    end
  end

  private
  
  def set_tab
    @tab = "analysis"
  end

  def resolve_layout 
    case action_name 
    when "infant_health", "maternal_health", "appointments", "death", "forecast", "rates", "birth_defects", "causes_of_death"
      current_agent ? "application" : "hospital"
    else
      "hospital"
    end
  end

  def council_handler
    set_up_council_notifiers if current_agent
  end

  def rounder(elements)
    new_elements = {}
    elements.each do |key, value|
      new_elements.merge!(key => value.round)
    end

    return new_elements
  end

  def infant_health_analyzer(infant_health)
    @stats[:art] += infant_health.art == "yes" ? 1 : 0
    @stats[:fsb] += infant_health.fsb == "yes" ? 1 : 0
    @stats[:msb] += infant_health.msb == "yes" ? 1 : 0
    @stats[:full_term] += infant_health.term == "full_term" ? 1 : 0
    @stats[:post_term] += infant_health.term == "post_term" ? 1 : 0
    @stats[:pre_term] += infant_health.term == "pre_term" ? 1 : 0
    @stats[:abnormalities] += infant_health.abnormalities != "none" ? 1 : 0
    @stats[:total] += 1
    @stats[:resuscitation_dg] +=  infant_health.resuscitation == "done_good" ? 1 : 0
    @stats[:resuscitation_db] +=  infant_health.resuscitation == "done_bad" ? 1 : 0
    @stats[:resuscitation_nd] +=  infant_health.resuscitation == "not_done" ? 1 : 0
    @stats[:sum_agpar_1] += infant_health.agpar_scor_1
    @stats[:sum_agpar_5] += infant_health.agpar_scor_5
    @stats[:sum_length] += infant_health.length
    @stats[:sum_weight] += infant_health.weight
    @stats[:sum_head_circumference] += infant_health.head_circumference
    @stats[:agpar_scor_1_above] += infant_health.agpar_scor_1 > 6 ? 1 : 0
    @stats[:agpar_scor_5_above] += infant_health.agpar_scor_5 > 6 ? 1 : 0
  end

  def maternal_health_analyzer(maternal_health)
    @stats[:total] += 1
    @stats[:teenage_pregnancy] += maternal_health.age < 20 ? 1 : 0
    @stats[:high_risk_pregnancy] += maternal_health.age > 35 ? 1 : 0
    @stats[:doctor] += maternal_health.birth_attendant == "doctor" ? 1 : 0
    @stats[:midwife] += maternal_health.birth_attendant == "midwife" ? 1 : 0
    @stats[:out_of_health_facility] += maternal_health.place_of_delivery == "other" ? 1 : 0
    @stats[:post_mature] += maternal_health.gestational_age > 42 ? 1 : 0
    @stats[:pre_mature] += maternal_health.gestational_age < 37 ? 1 : 0
    @stats[:sum_gestational_age] += maternal_health.gestational_age
    @stats[:sum_labour_duration] += maternal_health.duration_of_labour
    @stats[:spontaneous] += maternal_health.labour_on_set == "spontaneous" ? 1 : 0
    @stats[:induced] += maternal_health.labour_on_set == "induced" ? 1 : 0
    @stats[:episiotomy] += maternal_health.episiotomy == "episiotomy" ? 1 : 0
    @stats[:laceration] += maternal_health.laceration == "laceration" ? 1 : 0
    @stats[:atonic] += maternal_health.uterus == "atonic" ? 1 : 0
    @stats[:placenta] += maternal_health.placenta == "complete" ? 1 : 0
    @stats[:membranes] += maternal_health.membranes == "complete" ? 1 : 0
    @stats[:sutures] += maternal_health.sutures
    @stats[:matthews_duncan] += maternal_health.placenta_separation == "matthews_duncan" ? 1 : 0
    @stats[:cord] += maternal_health.vessels == 2 ? 1 : 0
    @stats[:normal_birth] += maternal_health.type_of_delivery == "normal" ? 1 : 0
    @stats[:cs] += maternal_health.type_of_delivery == "cs" ? 1 : 0
    @stats[:breech] += maternal_health.type_of_delivery == "breech" ? 1 : 0
    @stats[:blood_loss] += maternal_health.blood_loss
    @stats[:haemorrhage] += maternal_health.source_of_pph != "no_haemorrhage" ? 1 : 0
    @stats[:mothers_health] += maternal_health.mothers_condition == "healthy" ? 1 : 0
    @stats[:post_partum_complications] += maternal_health.post_partum_complications != "no_complications" ? 1 : 0
  end

  def death_analyzer(cause)
    if cause.age <= 28
      @stats[:neonatal] += 1
    elsif cause.age > 28 && cause.age <= 365
        @stats[:infant_deaths] += 1
    elsif cause.age > 365 && cause.age <= 1825
      @stats[:under_five_deaths] += 1
    elsif cause.age > 1825 && cause.age <= 4380
      @stats[:children] += 1
    elsif cause.age > 4380 && cause.age <= 6935
      @stats[:teenage_deaths] += 1
    elsif cause.age > 6935 && cause.age <= 12775
      @stats[:early_adult_deaths] += 1
    elsif cause.age > 12775 && cause.age <= 21900
      @stats[:middle_adult_deaths] += 1
    elsif cause.age > 21900 && cause.age <= 27375
      @stats[:later_adults_deaths] += 1
    elsif cause.age > 27375
      @stats[:old_adults] += 1
    end
       
    @total += 1
  end
end

#GET30OFF domain code

