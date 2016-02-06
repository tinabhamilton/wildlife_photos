class WildlivesController < ApplicationController
  before_action :set_wildlife, only: [:show, :edit, :update, :destroy]
  def home
  end
  # GET /wildlives
  # GET /wildlives.json
  def index
    @wildlives = Wildlife.all
  end

  # GET /wildlives/1
  # GET /wildlives/1.json
  def show
  end

  # GET /wildlives/new
  def new
    @wildlife = Wildlife.new
  end

  # GET /wildlives/1/edit
  def edit
  end

  # POST /wildlives
  # POST /wildlives.json
  def create
    @wildlife = Wildlife.new(wildlife_params)

    respond_to do |format|
      if @wildlife.save
        format.html { redirect_to @wildlife, notice: 'Wildlife was successfully created.' }
        format.json { render :show, status: :created, location: @wildlife }
      else
        format.html { render :new }
        format.json { render json: @wildlife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wildlives/1
  # PATCH/PUT /wildlives/1.json
  def update
    respond_to do |format|
      if @wildlife.update(wildlife_params)
        format.html { redirect_to @wildlife, notice: 'Wildlife was successfully updated.' }
        format.json { render :show, status: :ok, location: @wildlife }
      else
        format.html { render :edit }
        format.json { render json: @wildlife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wildlives/1
  # DELETE /wildlives/1.json
  def destroy
    @wildlife.destroy
    respond_to do |format|
      format.html { redirect_to wildlives_url, notice: 'Wildlife was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wildlife
      @wildlife = Wildlife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wildlife_params
      params.require(:wildlife).permit(:name, :size, :copies, :image)
    end
end
