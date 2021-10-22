class Formation < ApplicationRecord
    has_many :cours, dependent: :destroy
end
