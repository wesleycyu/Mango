class ChangeDateToString < ActiveRecord::Migration
  def change
    change_column :movies, :release_date, :string
  end
end
