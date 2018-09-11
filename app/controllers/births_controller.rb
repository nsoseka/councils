class BirthsController < ApplicationController
  before_action :require_agent, :set_tab, :set_up_council_notifiers

  def index
    # @births = Birth.today
    @pagy, @births = pagy(Birth.today.where(council_id: current_agent.council.id))

    @new_birth = params['new_birth']
    @menu = 'index-b'
  end

  def new
    @birth = Birth.new
    @menu = 'new-b'
  end

  def create
    @menu = 'new-b'
    @birth = Birth.new(birth_params)

    if @birth.save
      # flash[:notice] = "birth was succesfully created," +
      #                   "once verified you will be able to access the platform"

      redirect_to births_path @birth, new_birth: 'yes'
    else
      render 'births/new'
    end
  end

  def show
    @menu = 'find-b'
    @birth = Birth.find(params[:id])
  end

  def find 
    @menu = 'find-b'
    @search_query = ''
  end

  def search
    @search_query = params[:search_query]
    @menu = 'find-b'
    @pagy, @births = pagy(Birth.ransack(surname_or_given_name_or_father_or_mother_or_certificate_number_cont_any: @search_query.split(' ')).result)
    @pagy2, @new_borns = pagy NewBorn.ransack(c_name_or_child_code_or_f_name_or_m_name_cont_any: @search_query.split(' ')).result.where(council: current_agent.council)
  end

  def latest
    @menu = 'latest-b'
    @pagy, @new_borns = pagy(current_agent.council.new_borns.today)
  end

  private

  def birth_params
    params.require(:birth).permit(:council_id, :sub_center, :certificate_number, :surname, :given_name , :date_born, :place_born, :sex , :father, :father_pb, :father_db, :father_res, :father_job, :father_n , :father_rf , :mother, :mother_pb, :mother_db, :mother_res, :mother_job, :mother_n , :mother_rf, :date_drawn , :declaration, :registrar , :secretary, :date_done)
  end

  def set_tab
    @tab = 'births'
  end
end
