class Course < ActiveRecord::Base
    belongs_to :school
    has_many :grad_courses
    has_many :grads, through: :grad_courses
    accepts_nested_attributes_for :grad_courses, allow_destroy: true
    
    has_many :requirements_association, :class_name => "Requirement"
    has_many :requirements, :through => :requirements_association, :source => :requirement
end

class Requirement < ActiveRecord::Base
    belongs_to :course
    belongs_to :requirement, :class_name => "Course"
end
