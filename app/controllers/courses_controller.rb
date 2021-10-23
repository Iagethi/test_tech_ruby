class CoursesController < ApplicationController
    
    def index
        @courses = Course.all 
        render json: @courses
    end 

    def show
        @course = Course.find(params[:id])
        render json: @course
    end 

    def create
        @course = Course.create(
            course_name: params[:course_name],
            formation_id: params[:formation_id]
        )
        if @course.save
            render json: @course
        else
            render json: {error: 'params missing'}, status: :bad_request
        end  
    end 

    def show_by_formation
        @course = Course.where(formation_id: params[:id])
        render json: @course
    end


    def update
        @course = Course.find(params[:id])
        @course.update(
            course_name: params[:cours_name],
            formation_id: params[:formation_id]
        )
        render json: @course
    end 

    def destroy
        @courses = Cour.all 
        @course = Cour.find(params[:id])
        @course.destroy
        render json: @courses
    end 
end
