class Teacher < ActiveRecord::Base

  has_many :courses

  attr_accessible :name,
                  :grade,
                  :classroom,
                  :semester

  belongs_to :semester

  validate :name_is_valid
  validate :grade_is_valid
  validate :classroom_is_valid

  private
  # Used by validation check to verify that the name is valid
  def name_is_valid
    errors.add(:name,"Invalid empty string for name.") unless name_is_valid?
  end

  # Used by validation check to verify that the grade is valid
  def grade_is_valid
    errors.add(:grade,"Invalid empty string for grade.") unless grade_is_valid?
  end

  # Used by validation check to verify that the classroom is valid
  def classroom_is_valid
    errors.add(:classroom,"Invalid empty string for classroom.") unless classroom_is_valid?
  end

  # Used by validation to check if the type is not nil and that it is of type String
  def not_nil_and_string(str)
    return true unless str == nil or not str.instance_of? String
    return false
  end

  public
  # Verifies that the name is valid
  def name_is_valid?
    return false unless not_nil_and_string(self.name)
    return self.name.length > 0
  end

  # Verifies that the grade is valid
  def grade_is_valid?
    return false unless not_nil_and_string(self.grade)
    return self.grade.length > 0
  end

  # Verifies that the classroom is valid
  def classroom_is_valid?
    return false unless not_nil_and_string(self.classroom)
    return self.classroom.length > 0
  end

  def can_be_deleted?
=begin
    @semester = Semester.find_by_id self.semester
    if @semester == nil
      return true
    end
=end
    courses = Course.where(:semester_id => self.semester, :teacher_id => self.id)
    return courses.length == 0
  end

end
