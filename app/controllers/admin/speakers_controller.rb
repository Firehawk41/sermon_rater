class Admin::SpeakersController < Admin::BaseController
  def index
    @sermons = Sermon.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
