class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :title
      t.float :average

      t.timestamps null: false
    end
  end
end
