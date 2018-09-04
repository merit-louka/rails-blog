class CreateQuestionsQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :questions_quizzes do |t|
      t.integer :quiz_id
      t.integer :question_id
    end
  end
end
