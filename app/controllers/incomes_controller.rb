class IncomesController < ApplicationController
  def index
    @incomes = Income.where(user_id: current_user.id).order(year_month: :asc)
    @goukei = @incomes.sum(:value)
    @incomes_chart = @incomes.group(:name).sum(:value)
    @sums =  @incomes.group(:year_month)
   end
  
   def show
     @income = Income.find(params[:id])
     render 'index'
   end
  
   def new
     @income = Income.new
   end
  
   def edit
     @income = Income.find(params[:id])
   end
  
 
 
 
   def create
     @incomes = Income.create(post_incomes)
     redirect_to :incomes
   end
    
   def update
     @income = Income.find(params[:id])
     # @income.assign_attributes(params[:income])
     if
     @income.update(post_incomes)
     redirect_to incomes_path(@income)
     else
       render "new"
     end
   end
  
   def destroy
     @income = Income.find(params[:id])
     @income.destroy
     redirect_to :incomes
   end
 
   private
   
   # def income_group_by 
   #   @sums = Income.order(year_month: :asc).group_by{|income| income.year_month.to_date.strftime('%m')}
   #   gon.incomes_group_by = @sums
   # end
 
 
   def post_incomes
     params.require(:income).permit(:name, :year_month, :value).merge(user_id: current_user.id)
   end
  
end
