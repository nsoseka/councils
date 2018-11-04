class AnalysisController < ApplicationController 
  before_action :require_hospital, :set_tab

  layout :resolve_layout

  def infant_health
    @menu = 'infant_health'
    @stats = {
      art: 0,
      fsb: 0,
      msb: 0, 
      full_term: 0,
      pre_term: 0,
      post_term: 0,
      abnormalities: 0,
      total: 0,
      resuscitation_dg: 0,
      resuscitation_db: 0,
    }

    # t.string :term
    #   t.string :fsb 
    #   t.string :msb
    #   t.string :still_birth_cause

    #   t.decimal :agpar_scor_1, precision: 4, scale: 2
    #   t.decimal :agpar_scor_5, precision: 4, scale: 2
    #   t.decimal :weight, precision: 7, scale: 2
    #   t.decimal :length, precision: 4, scale: 2
    #   t.decimal :head_circumference, precision: 4, scale: 2

    #   t.string :resuscitation
    #   t.string :abnormalities
    #   t.string :art
    InfantHealth.where(hospital: current_hospital).find_each do |infant_health|
      infant_health_analyzer(infant_health)
    end
  end

  def maternal_health
    @menu = 'maternal_health'
      
    #   t.string :birth_attendant
    #   t.string :place_of_delivery 
    #   t.integer :gestational_age

    #   t.decimal :duration_of_labour
    #   t.string :labour_on_set
    #   t.string :type_of_delivery
    #   t.string :placenta_separation
    #   # t.string :delivery_method
    #   t.string :placenta
    #   t.string :membranes
    #   t.string :nature_of_cord
    #   t.integer :vessels
    #   t.decimal :blood_loss, precision: 6, scale: 2
    #   t.string :source_of_pph
    #   t.string :episiotomy
    #   t.string :laceration
    #   t.integer :sutures
    #   t.string :uterus
    #   t.string :mothers_condition
    #   t.string :post_partum_complications
  end

  def death
    @menu = 'death'
  end

  def appointments
    @menu = 'appointments'
  end

  private
   
  def set_tab
    @tab = "analysis"
  end

  def resolve_layout 
    case action_name 
    when "show"
      current_agent ? "application" : "hospital"
    else
      "hospital"
    end
  end

  def infant_health_analyzer(infant_health)
    @stats[:art] += infant_health.art == "yes" ? 1 : 0
    @stats[:fsb] += infant_health.fsb == "yes" ? 1 : 0
    @stats[:msb] += infant_health.msb == "yes" ? 1 : 0
    @stats[:full_term] += infant_health.term == "full_term" ? 1 : 0
    @stats[:post_term] += infant_health.term == "post_term" ? 1 : 0
    @stats[:pre_term] += infant_health.term == "pre_term" ? 1 : 0
    @stats[:abnormalities] += infant_health.abnormalities != "none" ? 1 : 0
    @stats[:total] += @stats[:total] + 1
    @stats[:resuscitation_dg] +=  infant_health.resuscitation == "done_good" ? 1 : 0
    @stats[:resuscitation_db] +=  infant_health.resuscitation == "done_bad" ? 1 : 0
  end
end


