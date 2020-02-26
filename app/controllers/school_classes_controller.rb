class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def create
        # byebug
        @school_class = SchoolClass.create(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find_by_id(params[:id])
    end

    def edit
        @school_class = SchoolClass.find_by_id(params[:id])
    end

    def update
        @school_class = SchoolClass.find_by_id(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    def index
        # byebug
        @schools = SchoolClass.all
        # byebug
    end

    private

        def school_class_params
            params.require(:school_class).permit(:title, :room_number)
        end


end