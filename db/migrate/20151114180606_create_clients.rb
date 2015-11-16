class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :phone
      t.references :user

      t.timestamps
    end
  end
end
