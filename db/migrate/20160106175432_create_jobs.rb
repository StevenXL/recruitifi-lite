class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.references :employer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
