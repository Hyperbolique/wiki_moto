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
       if @user.save
         redirect_to @moto, notice: 'Cette moto a bien été recensé.'
       else
         render :new
       end
     end
    end
 def update
    respond_to do |format|
      if @moto.update(user_params)
        redirect_to @moto, notice: 'Les informations sur cette moto ont été mises à jour.'
      else
        render :edit
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @moto.destroy
    respond_to do |format|
     redirect_to motos_url, notice: 'La page a bien été détruite.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moto
      @moto = Moto.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def moto_params
    #   params.require(:moto).permit()
    # end
end
