class TodosController < ApplicationController
  def create
    @todo = Todo.create(params.require(:todo).permit(:title, :description))
    @todo.save
    redirect_to @todo
  end

  def new
    @todo = Todo.new
  end

  def show
    # render plain: params.inspect
    @todo = Todo.find_by_id(params[:id])
  end
end
