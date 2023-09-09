class CreateDevQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :dev_questions do |t|
      t.references :tema, foreign_key: true, null: false
      t.text :enunciado
      t.integer :dificultad, null: false
      t.string :tip, null: false

      t.timestamps
    end
  end
end
