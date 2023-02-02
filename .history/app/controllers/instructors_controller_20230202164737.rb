class InstructorsController < ApplicationController

    def create
        Instructor.create!()
    end

    private
    def instructor_params
        params.permits()
    end
end
