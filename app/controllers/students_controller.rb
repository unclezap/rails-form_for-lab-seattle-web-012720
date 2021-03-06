class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        # byebug
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find_by_id(params[:id])
    end

    def edit
        @student = Student.find_by_id(params[:id])
    end

    def update
        @student = Student.find_by_id(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end
    
    def index
        # byebug
        @students = Student.all
    end

    private 

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end