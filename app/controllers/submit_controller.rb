class SubmitController < ApplicationController
  protect_from_forgery except: :create
  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.json { render json: { id: @submission.id.to_s }, status: :created }
      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def submission_params
    params.permit(:form_id, data: {})
  end
end
