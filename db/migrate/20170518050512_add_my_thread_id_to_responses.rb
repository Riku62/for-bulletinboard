class AddMyThreadIdToResponses < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :my_thread_id, :integer
  end
end
