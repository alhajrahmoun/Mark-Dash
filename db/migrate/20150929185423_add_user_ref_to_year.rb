class AddUserRefToYear < ActiveRecord::Migration
  def change
    add_reference :years, :user, index: true, foreign_key: true
  end
end
