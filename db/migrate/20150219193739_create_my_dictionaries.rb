class CreateMyDictionaries < ActiveRecord::Migration
  def change
    create_table :my_dictionaries do |t|
      t.string :eng
      t.string :rus

      t.timestamps null: false
    end
  end
end
