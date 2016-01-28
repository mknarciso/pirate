class GradCoursesController < ApplicationController
  before_action :set_grad, :set_courses

  def edit
  end
  
  # PATCH/PUT /grads/1
  # PATCH/PUT /grads/1.json
  def update
    respond_to do |format|
      if @grad.update(grad_params)
        format.html { redirect_to @grad, notice: 'Cursos adicionados com sucesso' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grad
      @grad = Grad.find(params[:id])
    end
    
    def set_courses
       @courses = Course.where(school_id: @grad.school_id) 
       @gc = GradCourse.where(grad_id: @grad.id)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def grad_params
      params.require(:grad).permit(:name, :min, :max, :school_id )
    end
  
end