class TestsController < ApplicationController
  before_action :find_test, only: [:show]
  before_action :logged_in_user, only: [:create]

  def show
      @course = @test.course
      @questions = @course.questions.sample(@test.quantity)
      @question = @questions.first
      if params[:qid]
         @questions = @course.questions
         @question = @questions.find_by id:  params[:qid]
       end
    end

  def create
    @test = current_student.tests.build test_params
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end
  private
  def find_test
    @test = Test.find_by id: params[:id]
    unless @test.present?
      flash[:success] = "Test doesn't exist"
      redirect_to courses_url
    end
  end

  def test_params
    params.require(:test).permit(:course_id,:student_id)
  end
end
