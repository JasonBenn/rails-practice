class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.create(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def new
    @todo = Todo.new
  end

  def show
    @todo = Todo.find_by_id(params[:id])
  end

  def edit
  end

  private
  
  def todo_params
    params.require(:todo).permit(:title, :description)
  end

end

    # render plain: params.inspect
