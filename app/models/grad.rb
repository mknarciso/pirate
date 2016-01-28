class Grad < ActiveRecord::Base
    belongs_to :school
    has_many :grad_courses
    has_many :courses, through: :grad_courses
end
