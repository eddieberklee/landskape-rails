class TeachersController < ApplicationController
  protect_from_forgery

  def show
    #Not currently used.
    #@teacher = Teacher.find_by_id params[:id]
    #return unless teacher_is_valid(@teacher)
  end

  def index
    @semester = Semester.find_by_id params[:semester_id]
    if params[:semester_id]
      @semester = Semester.find_by_id params[:semester_id]
      if not @semester
        flash[:warning] = [[:semester_id, "Unable to locate the specified semester."]]
        redirect_to semesters_path
        return
      end
    else
      flash[:warning] = [[:semester_id, "No semester was given."]]
      redirect_to semesters_path
      return
    end
    @teachers = Teacher.find_all_by_semester_id @semester
  end

  def new
    @semester = Semester.find_by_id params[:semester_id]
    return unless semester_is_valid(@semester)
    if flash.key? :course
      @course = flash[:course]
      render 'new'
      return
    end
  end

  def create
    @semester = Semester.find_by_id params[:semester_id]
    return unless semester_is_valid(@semester,"Error: Unable to find a semester to associated with the teacher.")

    @teacher = @semester.teachers.create(params[:teacher])
    if @teacher.new_record?
      flash[:warning] = @teacher.errors
      flash[:teacher] = @teacher
      redirect_to new_semester_teacher_path(@semester)
      return
    else
      flash[:notice] = "Successfully added #{@teacher.name} to the database."
      redirect_to semester_teachers_path(@semester)
    end
  end

  def edit
    @semester = Semester.find_by_id params[:semester_id]
    return unless semester_is_valid(@semester)
    @teacher = Teacher.find_by_id params[:id]
    return unless teacher_is_valid(@teacher)
  end

  def update
    @semester = Semester.find_by_id params[:semester_id]
    return unless semester_is_valid(@semester)
    @teacher = Teacher.find_by_id params[:id]
    return unless teacher_is_valid(@teacher)

    if @teacher.update_attributes(params[:teacher])
      flash[:notice] = "#{@teacher.name}'s entry was successfully updated."
      redirect_to semester_teachers_path(@semester)
    else
      flash[:warning] = @teacher.errors
      redirect_to edit_semester_teacher_path(@semester, @teacher)
    end
  end

  def destroy
    @teacher = Teacher.find_by_id(params[:id])
    return unless teacher_is_valid(@teacher)

    name = @teacher.name

    if @teacher.destroy
      flash[:notice] = "#{name} was successfully deleted from the database."
    else
      flash[:warning] = @teacher.errors
    end

    redirect_to semester_teachers_path
  end

  private
  def teacher_is_valid(teacher)
    if(teacher == nil)
      flash[:warning] = [[:id, "Could not find the corresponding teacher."]]
      redirect_to semester_teachers_path
      return false
    end
    return true
  end


  private
  def semester_is_valid(semester, message="Error: Unable to find the semester for the course.")
    if not semester
      flash[:warning] = [[:semester_id, message]]
      redirect_to semesters_path, :method => :get
      return false
    end
    return true
  end

end
