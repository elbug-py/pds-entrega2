class CreateTemas < ActiveRecord::Migration[7.0]
  def change
    create_table :temas do |t|
      t.string :materia_actual
      

      t.timestamps
    end
  end
end
