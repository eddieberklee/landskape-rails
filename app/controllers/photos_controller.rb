class PhotosController < ApplicationController
  protect_from_forgery

  def show
  end

  def index
    #@username = 'eddie'
  end

  def new
  end

  def create
    #@semester = Semester.find_by_id params[:semester_id]
    #return unless semester_is_valid(@semester,"Error: Unable to find a semester to associated with the teacher.")
    #
    #@teacher = @semester.teachers.create(params[:teacher])
    #if @teacher.new_record?
    #  flash[:warning] = @teacher.errors
    #  flash[:teacher] = @teacher
    #  redirect_to new_semester_teacher_path(@semester)
    #  return
    #else
    #  flash[:notice] = "Successfully added #{@teacher.name} to the database."
    #  redirect_to semester_teachers_path(@semester)
    #end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
