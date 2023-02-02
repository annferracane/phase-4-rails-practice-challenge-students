class InstructorsController < ApplicationController

    def create
        Instructor.create!()
    end

    private
    def instructor_params
        params.permit(:name)
    end
end
