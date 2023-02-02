class InstructorsController < ApplicationController
rescue_from 

    def create
        Instructor.create!(instructor_params)
    end

    private
    def instructor_params
        params.permit(:name)
    end
end
