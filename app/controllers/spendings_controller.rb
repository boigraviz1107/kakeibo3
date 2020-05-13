class SpendingsController < ApplicationController
  def index
    @spendings = Spending.where(user_id: current_user.id).order(year_month: :DESC)
    @goukei = @spendings.sum(:value)
    @kongetunospendings = @spendings.where(year_month: Time.now.all_month).all.sum(:value)
    d = Date.today
    @month = d.month
    @user = current_user.name
	end
 
  def show
		@spending = Spending.find(params[:id])
		render 'index'
	end
 
  def new
    @spending = Spending.new


	end
 
  def edit
    @spending = Spending.find(params[:id])
	end
 



  def create
    @spendings = Spending.create(post_spendings)
    redirect_to spendings_path
 end
   
  def update
    @spending = Spending.find(params[:id])
    # @income.assign_attributes(params[:income])
    if
    @spending.update(post_spendings)
    redirect_to spendings_path(@spending)
    else
      render "new"
    end
  end
 
  def destroy
		@spending = Spending.find(params[:id])
		@spending.destroy
		redirect_to :spendings
  end

	private
  def post_spendings
    params.require(:spending).permit(:name, :year_month, :value).merge(user_id: current_user.id)
  end
end
