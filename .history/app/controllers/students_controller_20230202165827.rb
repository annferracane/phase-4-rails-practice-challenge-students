class StudentsController < ApplicationController

    def create
        student = Student.create!(student_params)
        render json: 

    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end
end
