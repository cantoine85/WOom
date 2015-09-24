class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.text :address
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, index: true, foreign_key: true
      t.references :parent_experience, index: true
      t.references :initial_experience, index: true
      t.string :status
      t.integer :rating

      t.timestamps null: false
    end
  end
end
