class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.text :nombre
      t.string :texto
      t.references :articulo, foreign_key: true

      t.timestamps
    end
  end
end
