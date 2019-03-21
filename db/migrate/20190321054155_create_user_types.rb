class CreateUserTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_types do |t|
      t.string :type, index: { unique: true }

      t.timestamps
    end
  end
end
