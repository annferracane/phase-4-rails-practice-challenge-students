class StudentsController < ApplicationController

    def create
        student = Student.create!(student_params)
        
    end
end
