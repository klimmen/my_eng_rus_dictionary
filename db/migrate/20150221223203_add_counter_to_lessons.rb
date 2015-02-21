class AddCounterToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :counter, :integer, default: 0
  end
end
