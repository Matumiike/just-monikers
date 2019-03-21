class CreateConnectionStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :connection_statuses do |t|
      t.string :status, index: { unique: true }

      t.timestamps
    end
  end
end
