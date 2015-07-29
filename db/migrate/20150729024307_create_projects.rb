class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :live_url
      t.string :source_code_link

      t.timestamps null: false
    end
  end
end
