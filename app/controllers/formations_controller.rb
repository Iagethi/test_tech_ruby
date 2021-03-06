# frozen_string_literal: true

class FormationsController < ApplicationController
  def index
    @formations = Formation.all
    render json: @formations
  end

  def show
    @formation = Formation.find(params[:id])
    render json: @formation
  end

  def create
    @formation = Formation.create(
      formation_name: params[:formation_name]
    )
    if @formation.save
      render json: @formation
    else
      render json: { error: 'formation_name missing' }, status: :bad_request
    end
  end

  def update
    @formation = Formation.find(params[:id])
    @formation.update(
      formation_name: params[:formation_name]
    )
    if @formation.save
      render json: @formation
    else
      render json: { error: 'formation_name missing' }, status: :bad_request
    end
  end

  def destroy
    @formations = Formation.all
    @formation = Formation.find(params[:id])
    @formation.destroy
    render json: @formations
  end
end
