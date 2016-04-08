class ActusController < ApplicationController
	before_action :set_actu, only: [:show, :edit, :update, :destroy]


	def index
		@actus = Actu.all
	end

	def show
	end

	def new
	 @actu = Actu.new
	end

	def edit
	end

	def create
     @actu = Actu.new(actu_params)

    respond_to do |format|
      if @actu.save
        format.html { redirect_to @actu, notice: 'La nouvelle a bien été enregistrée.' }
      else
        format.html { render :new }
      end
    end
  end
def update
    respond_to do |format|
      if @actu.update(actu_params)
        format.html { redirect_to @actu, notice: 'La nouvelle a bien été éditée.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @actu.destroy
    respond_to do |format|
     format.html { redirect_to actus_url, notice: 'La nouvelle a bien été détruite.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actu
      @actu = Actu.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    def actu_params
      params.require(:actu).permit(:titre, :publication, :contenu)
    end
end
