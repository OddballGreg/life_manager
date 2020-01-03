class DashboardController < ApplicationController
  def index
    @todos = Todo.where(parent: nil)
    @relationships = Relationship.all.order("last_communicated ASC NULLS FIRST, last_seen ASC NULLS FIRST")

  end
end
