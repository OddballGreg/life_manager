class TodosController < ApplicationController
  def update
    Todo.find(params[:id]).update(completed: params[:completed])
    redirect_to root_path
  end
end
