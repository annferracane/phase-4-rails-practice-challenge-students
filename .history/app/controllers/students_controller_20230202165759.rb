class StudentsController < ApplicationController

    def create
        student = Student.create!(student_params)

    end

    private

    def student_params
        params.permit(:name, :age, :major, :instructor_id)
    end
end
