class FormsController < ApplicationController
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
end
