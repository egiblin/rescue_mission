class AddAnswersToQuestions < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.timestamps
      t.belongs_to :question, null: false
    end
  end
end
