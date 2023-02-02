class StudentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid 
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: Student.all, status: :ok
    end

    def create
        student = Student.create!(student_params)
        render json: student, status: :created
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student, status: :accepted
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        head 

    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end

    def record_invalid(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    def record_not_found
        render json: { errors: "Record Not Found" }, status: :not_found
    end
end
