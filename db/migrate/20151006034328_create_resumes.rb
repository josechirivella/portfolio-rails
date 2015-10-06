class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.references :education
      t.references :experience

      t.timestamps null: false
    end
  end
end
