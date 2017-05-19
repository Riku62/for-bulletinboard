class CreateMyThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :my_threads do |t|
      t.references :my_threads, foreign_key: true
      t.string :title, :null => false
      t.timestamps
    end
  end
end
