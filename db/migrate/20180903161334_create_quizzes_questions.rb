class CreateQuizzesQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes_questions do |t|
      t.integer :quiz_id
      t.integer :question_id
    end
  end
end
