class CreateMyThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :my_threads do |t|
      t.string :title, :null => false
      t.timestamps
    end
  end
end
