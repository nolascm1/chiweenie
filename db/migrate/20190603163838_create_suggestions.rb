class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
        t.string :activity
        t.text :description
        t.timestamps
    end
  end
end
