class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.references :company
      t.references :client
      t.integer :mark
      t.text :comment

      t.timestamps
    end
  end
end
