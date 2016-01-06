class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :job, index: true, foreign_key: true
      t.references :recruiter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
