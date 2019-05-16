class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :title
      t.string :description
      t.string :address
      t.integer :occurred_at
      t.string :type_of
      t.string :image
      t.timestamps
    end
  end
end
