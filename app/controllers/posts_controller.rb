class PostsController < ApplicationController
  def index
    @incomes = Income.all.sum(:value)
    @spendings = Spending.all.sum(:value)
    @zanndaka = @incomes - @spendings
    end
end
