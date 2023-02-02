class InstructorsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def create
        render json: Instructor.create!(instructor_params), status: :created
    end

    private

    def instructor_params
        params.permit(:name)
    end

    def record_invalid(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    def record_not_found
        render json: { errors: "Record Not Found" }, status: :not_found
    end
end
