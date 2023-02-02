class InstructorsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def create
        Instructor.create!(instructor_params)
    end

    private
    def instructor_params
        params.permit(:name)
    end

    def record_invalid(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity

    end
end