class AddYearRefToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :year, index: true, foreign_key: true
  end
end
