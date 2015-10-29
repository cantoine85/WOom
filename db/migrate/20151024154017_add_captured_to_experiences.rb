class AddCapturedToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :captured, :boolean, null: false, default: false
  end
end
