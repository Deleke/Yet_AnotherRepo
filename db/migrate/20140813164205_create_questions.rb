class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :quest
      t.text :a
      t.text :b
      t.text :c
      t.text :d
      t.text :answer

      t.references :quiz, index: true

      t.timestamps
    end
  end
end
