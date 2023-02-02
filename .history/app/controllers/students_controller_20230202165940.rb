class StudentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid 

    def create
        student = Student.create!(student_params)
        render json: student, status: :created
    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end

    def record_invalid(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
end
