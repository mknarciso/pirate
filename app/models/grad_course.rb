class GradCourse < ActiveRecord::Base
    belongs_to :grad
    belongs_to :course
end