class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tag
      t.string :phone
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
