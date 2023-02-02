class Instructor < ApplicationRecord
    has_many :students

    validates :name, presence
end
