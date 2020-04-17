class SpendingsController < ApplicationController
  def index
    @spendings = Spending.order(year_month: :asc)
    @goukei = Spending.all.sum(:value)
    @spendings_chart = Spending.group(:name).sum(:value)
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
