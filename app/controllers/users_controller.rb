class UsersController < ApplicationController
  before_action :prevent_views

  def show
    @user = User.find(params[:id])
    @list = Form.all
    @total = @list.count
    @android = Form.where("category = ?", '0').count
    @web = Form.where("category = ?", '1').count 
    @problem = Form.where("category = ?", '2').count 
    @other = Form.where("category = ?", '3').count   
  end

  private 

  def prevent_views
    render_404 unless current_user
  end
end
