class Articulo < ApplicationRecord
  belongs_to :autor
  validates:titulo, :presence=>{:message=> "no puede ser vacío"}
  validates:contenido,:presence=>true,
               :length=>{:minimum=>5, :message=> "demasiado corto, debe ser al menos 50 caracteres"} 
end
