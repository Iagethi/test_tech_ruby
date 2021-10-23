# frozen_string_literal: true

class Course < ApplicationRecord
  belongs_to :formation
  validates :course_name, presence: true
end
