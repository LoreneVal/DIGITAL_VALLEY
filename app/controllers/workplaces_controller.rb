class WorkplacesController < ApplicationController
  def index
    @workplaces = Workplace.all
  end
end
