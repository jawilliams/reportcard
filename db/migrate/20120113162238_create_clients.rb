class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :cu_id
      t.integer :nsversion

      t.timestamps
    end
  end
end
