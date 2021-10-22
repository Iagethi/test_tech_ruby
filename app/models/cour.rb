class Cour < ApplicationRecord
    belongs_to :formation
    validates :cours_name, presence: true
end
