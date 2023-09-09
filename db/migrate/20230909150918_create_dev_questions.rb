class CreateDevQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :dev_questions do |t|
      t.references :tema, foreign_key: true, null: false
      t.text :enunciado
      t.integer :dificultad
      t.string :tip

      t.timestamps
    end
  end
end
