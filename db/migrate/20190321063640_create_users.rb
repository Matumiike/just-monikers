class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, index: { unique: true }
      t.string :public_key, index: { unique: true }
      t.references :group, foreign_key: true
      t.references :connection_status, foreign_key: true
      t.references :user_type, foreign_key: true

      t.timestamps
    end
  end
end
