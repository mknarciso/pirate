class Course < ActiveRecord::Base
    belongs_to :school
    has_many :grad_courses
    has_many :grads, through: :grad_courses
end
