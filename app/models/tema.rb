class Tema < ApplicationRecord
    has_many :alt_questions
    has_many :dev_questions
end
