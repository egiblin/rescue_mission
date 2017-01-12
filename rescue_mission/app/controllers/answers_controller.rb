class AnswersController < ApplicationController

  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question
    if @answer.save
      redirect_to @question, notice: 'Answer was successfully posted.'
    else
      @answers = @question.answers
      render "questions/show"
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:question_id])

    if @answer.update(question_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  private

    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:body, :question_id)
    end
end
