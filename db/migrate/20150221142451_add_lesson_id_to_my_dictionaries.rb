class AddLessonIdToMyDictionaries < ActiveRecord::Migration
  def change
    add_column :my_dictionaries, :lesson_id, :integer
  end
end
