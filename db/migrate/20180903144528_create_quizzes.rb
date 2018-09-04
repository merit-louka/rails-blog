class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.text :name
      t.text :difficulty

      t.timestamps
    end
  end
end
