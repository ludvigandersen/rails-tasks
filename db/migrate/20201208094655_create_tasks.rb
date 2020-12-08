class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :deadline
      t.string :start_date
      t.string :finished_date
      t.string :client_id
      t.string :user_id

      t.timestamps
    end
  end
end
