class PostsController < ApplicationController
  def index
    @incomes = Income.where(user_id: current_user.id)
    @spendings = Spending.where(user_id: current_user.id)
    @kongetunoincomes = @incomes.where(year_month: Time.now.all_month).all.sum(:value)
    @kongetunospendings = @spendings.where(year_month: Time.now.all_month).all.sum(:value)
    @user = current_user.name
    d = Date.today
    @month = d.month
    @zanndaka = @kongetunoincomes - @kongetunospendings
    @zanndaka_chart = @zanndaka
    end
end
