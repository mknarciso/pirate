class GradCoursesController < ApplicationController
  before_action :set_grad

  def edit
  end
  
  # PATCH/PUT /grads/1
  # PATCH/PUT /grads/1.json
  def update
    update_gc(grad_params)
    respond_to do |format|
    #  if @grad.update(grad_params)
        format.html { redirect_to @grad }#, notice: flatten_hash(grad_params) }
    #  else
    #    format.html { render :edit }
    #  end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grad
      @grad = Grad.find(params[:id])
      @courses = Course.where(school_id: @grad.school_id)
      @gc = GradCourse.where(grad_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grad_params
      params.require(:courses)
    end
  
    def update_gc(hash)
      #Take Ids already in GC to delete if not updated
      delete = @gc.where(grad_id: params[:id]).ids
      hash.each do |key,array|
        array.each do |c|
          #Check if already exists, if so, remove the id from delete array
          if !@gc.where(course_id: c).where(semester: key).empty?
            del_id = @gc.where(course_id: c).where(semester: key).ids
            delete.delete(del_id[0])
          else
            #Create the new object
            @object = GradCourse.new(:grad_id => params[:id], :course_id => c, :semester => key)
            @object.save
            if @object.errors.any?
              puts "ERROS:"
              puts @object.errors.full_messages.each
            end
          end
        end
      end
      #Delete the GC that were not updated
      GradCourse.find(delete).each(&:destroy)
    end
end