module ApplicationHelper
  include Pagy::Frontend
  
  def my_form_for(record, options = {}, &proc)
    form_for(record, options.merge!({builder: MyFormBuilder}), &proc)
  end
end
