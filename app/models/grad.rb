class Grad < ActiveRecord::Base
    belongs_to :school
    has_many :grad_courses
    has_many :courses, through: :grad_courses
    accepts_nested_attributes_for :grad_courses,
    allow_destroy: true
    accepts_nested_attributes_for :courses,
    allow_destroy: true
end

