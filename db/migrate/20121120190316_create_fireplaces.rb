class CreateFireplaces < ActiveRecord::Migration
  def change
    create_table :fireplaces do |t|
      t.text :description
      t.text :images

      t.timestamps
    end
  end
end
