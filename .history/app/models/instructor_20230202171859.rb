class Instructor < ApplicationRecord
    has_many :students, dependent: 

    validates :name, presence: true
end
