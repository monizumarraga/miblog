class ComentariosController < ApplicationController
  before_action :set_articulo, only [:create, :destroy]

  def create
    @comentario = @articulo.comentarios.create(comentario_params)

    redirect_to post_path(@articulo)
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentario = @articulo.comentarios.find(param[:id])
    @comentario.destroy

    redirect_to @articulo
  end

  private
      def set_articulo
        @articulo = Articulo.find(params[:articulo_id])
      end
      # Never trust parameters from the scary internet, only allow the white list through.
      def comentario_params
        params.require(:comentario).permit(:nombre, :texto, :articulo_id)
      end
end
