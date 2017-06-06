class AdquisicionsController < ApplicationController
  before_action :set_adquisicion, only: [:show, :edit, :update, :destroy]

  # GET /adquisicions
  # GET /adquisicions.json
  def index
    @adquisicions = Adquisicion.all
  end

  # GET /adquisicions/1
  # GET /adquisicions/1.json
  def show
  end

  # GET /adquisicions/new
  def new
    @adquisicion = Adquisicion.new
  end

  # GET /adquisicions/1/edit
  def edit
  end

  # POST /adquisicions
  # POST /adquisicions.json
  def create
    @adquisicion = Adquisicion.new(adquisicion_params)

    respond_to do |format|
      if @adquisicion.save
        format.html { redirect_to @adquisicion, notice: 'Adquisicion was successfully created.' }
        format.json { render :show, status: :created, location: @adquisicion }
      else
        format.html { render :new }
        format.json { render json: @adquisicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adquisicions/1
  # PATCH/PUT /adquisicions/1.json
  def update
    respond_to do |format|
      if @adquisicion.update(adquisicion_params)
        format.html { redirect_to @adquisicion, notice: 'Adquisicion was successfully updated.' }
        format.json { render :show, status: :ok, location: @adquisicion }
      else
        format.html { render :edit }
        format.json { render json: @adquisicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adquisicions/1
  # DELETE /adquisicions/1.json
  def destroy
    @adquisicion.destroy
    respond_to do |format|
      format.html { redirect_to adquisicions_url, notice: 'Adquisicion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adquisicion
      @adquisicion = Adquisicion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adquisicion_params
      params.require(:adquisicion).permit(:fecha_compra, :monto, :cliente)
    end
end
