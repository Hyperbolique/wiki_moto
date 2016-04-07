class MotosController < ApplicationController
	before_action :set_moto, only: [:show, :edit, :update, :destroy]


	def index
		@motos = Moto.all
	end

	def show
	end

	def new
	 @moto = Moto.new
	end

	def edit
	end

	def create
     @moto = Moto.new(moto_params)

    respond_to do |format|
      if @moto.save
        format.html { redirect_to @moto, notice: 'Le profil a bien été enregistré.' }
      else
        format.html { render :new }
      end
    end
  end
def update
    respond_to do |format|
      if @moto.update(moto_params)
        format.html { redirect_to @moto, notice: 'Le profil a bien été édité.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @moto.destroy
    respond_to do |format|
     format.html { redirect_to motos_url, notice: 'Le profil a bien été détruit.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moto
      @moto = Moto.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    def moto_params
      params.require(:moto).permit(:nom)
    end
end
