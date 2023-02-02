class StudentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid 
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        if params[:instructor_id]
            students = Instructor.find(params[:instructor_id]).students
        else
            students = Student.all
        end 
        render students, status: :ok
    end

    def show
        if params[:instructor_id]
            student = Instructor.find(params[:instructor_id]).students.find(params[])
        else

        end
        render json: Student.find(params[:id]), status: :ok
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
        head :no_content
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
