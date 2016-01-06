class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body, null: false
      t.references :job, index: true, foreign_key: true
      t.references :recruiter, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
