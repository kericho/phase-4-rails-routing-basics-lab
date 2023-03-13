class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students = student_all
        render json: students
    end
    def highest_grade
        students = student_all.first
        render json: students
    end

    private
     
    def student_all
        Student.all.order(grade: :desc) 
    end
end