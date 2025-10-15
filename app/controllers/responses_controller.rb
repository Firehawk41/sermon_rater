class ResponsesController < ApplicationController
  def new
    @sermon = Sermon.find(params[:sermon_id])
    @response = @sermon.responses.new
    @questions = Question.all
  end
  def create
    @sermon = Sermon.find(params[:sermon_id])

    params[:responses].each do |resp_params|
      @sermon.responses.create(
        question_id: resp_params[:question_id],
        value: resp_params[:value]
      )
    end


    if @response.save
      redirect_to sermon_path(@sermon), notice: "Thank you for your feedback."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def response_params
    params.require(:response).permit(:sermon_id, :question_id, :value)
  end
end
