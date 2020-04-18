class PostsController < ApplicationController
  def index
    @incomes = Income.where(user_id: current_user.id).all.sum(:value)
    @spendings = Spending.where(user_id: current_user.id).all.sum(:value)
    @zanndaka = @incomes - @spendings
    end
end
