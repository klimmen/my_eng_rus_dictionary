class AddMyDictionariesCountToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :my_dictionaries_count, :integer, default: 0
  end
end
