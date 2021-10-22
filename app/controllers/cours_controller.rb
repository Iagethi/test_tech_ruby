class CoursController < ApplicationController
    
    def index
        @cours = Cour.all 
        render json: @cours
    end 

    def show
        @cour = Cour.find(params[:id])
        render json: @cour
    end 

    def create
        @cour = Cour.create(
            cours_name: params[:cours_name],
            formation_id: params[:formation_id]
        )
        if @formation.save
            render json: @cour
        else
            render json: {error: 'params missing'}, status: :bad_request
        end  
    end 

    def show_by_formation
        @cour = Cour.where(formation_id: params[:id])
        render json: @cour
    end


    def update
        @cour = Cour.find(params[:id])
        @cour.update(
            cours_name: params[:cours_name],
            formation_id: params[:formation_id]
        )
        render json: @cour
    end 

    def destroy
        @cours = Cour.all 
        @cour = Cour.find(params[:id])
        @cour.destroy
        render json: @cours
    end 
end
