module Admin
  class AgentsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Agent.
    #     page(params[:page]).
    #     per(10)
    # end

    def update
      @agent = Agent.find(params[:id])

      if @agent.update_attribute(:verified, update_params[:verified])
        flash[:notice] = I18n.translate "flash.updated"
        redirect_to(
          [namespace, requested_resource],
          notice: translate_with_resource("update.success"),
        )
      else
        puts @agent.errors.full_messages, "the messages wer here"
        render :edit, locals: {
          page: Administrate::Page::Form.new(dashboard, requested_resource),
        }
      end
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Agent.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    private 

    def update_params
      params.require(:agent).permit(:verified)
    end

  end
end
