class Tema < ApplicationRecord
    has_many :alt_questions
    has_many :dev_questions
    # belongs_to :user
end
