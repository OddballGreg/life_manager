class DashboardController < ApplicationController
  def index
    @relationships = Relationship.all.order("last_communicated ASC NULLS FIRST, last_seen ASC NULLS FIRST").limit(10)
    @concerns = Concern.all
    responder_for(Pages::Manager::Dashboard)
  end
end
