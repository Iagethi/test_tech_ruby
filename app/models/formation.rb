class Formation < ApplicationRecord
    has_many :cours, dependent: :destroy
    validates :formation_name, presence: true
end
