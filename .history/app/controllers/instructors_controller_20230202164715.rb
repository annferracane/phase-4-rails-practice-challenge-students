class InstructorsController < ApplicationController

    def create
        Instructor.create!()
    end
end
