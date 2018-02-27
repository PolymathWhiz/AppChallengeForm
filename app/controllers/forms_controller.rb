class FormsController < ApplicationController

  before_action :re_route

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      flash[:success] = 'You successfully reserved a spot!'
      redirect_back fallback_location: root_path
    else
      render :new
    end
  end

  private

  def form_params
    params.require(:form).permit(:first_name, :last_name, :category, :phone)
  end
  
  def re_route
    redirect_to user_path(current_user.id) if current_user
  end
end
