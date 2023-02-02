class InstructorsController < ApplicationController

    def create
        Instructor.create!()
    end

    private
    def instructor_params
        
    end
end
