class ExpensesController < ApplicationController
  
  def index
    get_expenses
  end
  
  def new
    @expense = Expense.new
  end
  
  def create
    @expense = Expense.new(params[:expense])
    if @expense.save
      flash[:notice] = "Expense Created"
      redirect_to :root
    else
      flash[:alert] = "Expense not created!"
      render :action => "new"
    end
  end
  
  def show
    get_expenses
  end
  
  
  protected
    
    def get_expenses
      @expenses = Expense.all
    end
  
  

end
