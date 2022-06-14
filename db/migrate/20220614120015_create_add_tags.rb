class CreateAddTags < ActiveRecord::Migration[6.1]
  def change
    create_table :add_tags do |t|
      t.text :body

      t.timestamps
    end
  end
end
