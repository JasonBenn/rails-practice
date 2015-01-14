class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to todos_path
  end

  def new
    @todo = Todo.new
  end

  def show
    @todo = Todo.find_by_id(params[:id])
  end

  def edit
    @todo = Todo.find_by_id(params[:id])
  end

  def update
    @todo = Todo.find_by_id(params[:id]) 
    @todo.update(todo_params)
    redirect_to todos_path
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description)
  end

end

    # render plain: params.inspect
