class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :registry_number, null: false
      t.string :name, null: false
      t.string :city, null: false

      t.timestamps null: false
    end

    add_index :companies, :registry_number, unique: true
  end
end
