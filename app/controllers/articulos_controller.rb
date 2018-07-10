class ArticulosController < ApplicationController
  def index
  	@articulo=Articulo.all.order("created_at DESC")
  end

  def new
  	@boton="Crear"
  	@articulo=Articulo.new
  end

  def create
  	@articulo=Articulo.new(articulo_params)
  	if @articulo.save
  		flasd[:notice]="Articulo creado correctamente"
  		redirect_to @articulo
  	else
  		render 'new'
  	end
  end

  def edit
  	@boton="Modificar"
  	@articulo=Articulo.find(params[:id])
  end

  def update
  	@articulo=Articulo.find(params[:id])
  	if @articulo.update(ariculo_params)
  		flasd[:notice]="Articulo editado correctamente"
  		redirect_to @articulo
  	else
  		render 'edit'
  	end
  end

  def show
  	@articulo=Articulo.find(params[:id])
  end

  def destroy
  	@articulo=Articulo.find(params[:id])
  	@articulo.destroy
  	redirect_to articulos_path, :notice => "Articulo eliminado correctamente"
  end
  
  	private

  def articulo_params
  	params.require(:articulo).permit(:titulo, :contenido)
  end
end
