class SoldiersController < ApplicationController
  before_action :set_soldier, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /soldiers
  # GET /soldiers.json
  def index
    @soldiers = Soldier.all
  end

  # GET /soldiers/1
  # GET /soldiers/1.json
  def show
  end

  # GET /soldiers/new
  def new
    @soldier = Soldier.new
  end

  # GET /soldiers/1/edit
  def edit
  end

  # POST /soldiers
  # POST /soldiers.json
  def create
    tags = params.except(*%w[utf8 authenticity_token soldier commit controller action])

    p tags
    p '='*100
    @soldier = Soldier.new(soldier_params)


    respond_to do |format|
      if @soldier.save
        format.html { redirect_to @soldier, notice: 'Soldier was successfully created.' }
        format.json { render :show, status: :created, location: @soldier }

        tags.each_pair do |key, value|

          p '=tttt'*100
          Stag.create key: key, value: value, soldier_id: @soldier.id
        end

      else
        format.html { render :new }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soldiers/1
  # PATCH/PUT /soldiers/1.json
  def update
    respond_to do |format|
      if @soldier.update(soldier_params)
        format.html { redirect_to @soldier, notice: 'Soldier was successfully updated.' }
        format.json { render :show, status: :ok, location: @soldier }
      else
        format.html { render :edit }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soldiers/1
  # DELETE /soldiers/1.json
  def destroy
    @soldier.destroy
    respond_to do |format|
      format.html { redirect_to soldiers_url, notice: 'Soldier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soldier
      @soldier = Soldier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soldier_params
      params.require(:soldier).permit(:name, :idd)
    end
end
