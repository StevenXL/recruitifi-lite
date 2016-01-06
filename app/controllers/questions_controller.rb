class QuestionsController < ApplicationController
  before_action :authorize_recruiter

  def create
    @question = Question.new(question_params)
    @question.recruiter_id = current_user.id

    if @question.save
      flash[:success] = "Question successfully created"
      redirect_to @question.job
    else
      @job = @question.job
      render 'jobs/show'
    end
  end

  private

  def question_params
    params.require(:question).permit(:body, :job_id)
  end

  def authorize_recruiter
    unless user_signed_in? && current_user.is_a?(Recruiter)
      flash[:error] = "Only recruiters can post question"
      redirect_to root_path
    end
  end
end
