class StudentsController < ApplicationController

    def create
        student = Student.create!()
    end
end
