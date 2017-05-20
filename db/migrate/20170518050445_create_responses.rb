class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.references :my_thread, foreign_key: true
      t.text :content, :null => false
      t.timestamps
    end
  end
end
