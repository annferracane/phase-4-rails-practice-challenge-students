class StudentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: record_invalid 

    def create
        student = Student.create!(student_params)
        render json: student, status: :created
    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end
end
