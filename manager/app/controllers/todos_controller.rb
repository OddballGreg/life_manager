class TodosController < ApplicationController
  def update
    Todo.find(params[:id]).update(completed: params[:completed])
    render json: '', status: :ok
  end

  def create
    todo = Todo.new(permitted_params)
    if todo.save!
      render json: '', status: :ok
    else
      render json: '', status: :unprocessable_entity
    end
  end

  private

  def permitted_params
    params.require(:todo).permit(:description)
  end
end
