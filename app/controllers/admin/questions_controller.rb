class Admin::QuestionsController < ApplicationController
  
  def require_admin
    unless current_student.admin?
      redirect_to root_path
    end
  end
end
