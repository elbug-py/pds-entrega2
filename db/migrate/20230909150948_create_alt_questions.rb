class CreateAltQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :alt_questions do |t|
      t.references :tema, foreign_key: true, null: false
      t.text :enunciado, null: false
      t.string :alternativa1, null: false
      t.string :tip1, null: false

      t.string :alternativa2, null: false
      t.string :tip2, null: false

      t.string :alternativa3, null: false
      t.string :tip3, null: false

      t.string :alternativa4
      t.string :tip4

      t.string :respuesta, null: false
      t.integer :dificultad, null: false

      t.timestamps
    end
  end
end
