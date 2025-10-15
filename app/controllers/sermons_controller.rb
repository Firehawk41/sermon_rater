class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all
  end

  def show
    @sermon = Sermon.find(paras[:id])
  end

  def results
  end
end
