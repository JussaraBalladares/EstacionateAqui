class EstacionamientosController < ApplicationController
  before_action :set_estacionamiento, only: [:show, :edit, :update, :destroy]

  # GET /estacionamientos
  # GET /estacionamientos.json
  def index

    @filterrific = initialize_filterrific(
      Estacionamiento,
      params[:filterrific],
      select_options: {
        with_distrito_id: Distrito.options_for_select,
        with_tipo_id: Tipo.options_for_select,
        with_ubicacion_id: Ubicacion.options_for_select,
      },
      persistence_id: 'shared_key',
      default_filter_params: {},
      available_filters: [:with_distrito_id, :with_tipo_id, :with_ubicacion_id]
    ) or return

    @ListaEstacionamiento = @filterrific.find

    respond_to do |format|
      format.html
      format.js
    end

  end

  def new
    @Estacionamiento = Estacionamiento.new
    @ListaDistrito = Distrito.all
    @ListaTipo = Tipo.all
    @ListaUbicacion = Ubicacion.all
  end
  
  # POST /estacionamientos
  # POST /estacionamientos.json
  def create
    @Estacionamiento = Estacionamiento.new(estacionamiento_params)

    respond_to do |format|
      if @Estacionamiento.save
        format.html { redirect_to estacionamientos_url, notice: 'Estacionamiento was successfully updated.' }
        
      else
        format.json { render json: @Estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacionamientos/1
  # DELETE /estacionamientos/1.json
  def destroy
    @Estacionamiento.destroy
    respond_to do |format|
      format.html { redirect_to estacionamientos_url, notice: 'Estacionamiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacionamiento
      @Estacionamiento = Estacionamiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estacionamiento_params
      params.require(:estacionamiento).permit(:descripcion, :direccion, :distrito_id, 
                                              :direccionmap, :dimension, :telefono, :precioporhora, :tipo_id, :ubicacion_id)
    end

end