class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]


	def index
		@comments = Comment.all
	end

	def show
	end

	def new
	 @comment = Comment.new
	end

	def edit
	end

	def create
     @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Le commentaire a bien été enregistré.' }
      else
        format.html { render :new }
      end
    end
  end
def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Le commentaire a bien été édité.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
     format.html { redirect_to comments_url, notice: 'Le commentaire a bien été détruit.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:auteur, :contenu, :publication)
    end
end
