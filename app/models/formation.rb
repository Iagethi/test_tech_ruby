# frozen_string_literal: true

class Formation < ApplicationRecord
  has_many :courses, dependent: :destroy
  validates :formation_name, presence: true
end
