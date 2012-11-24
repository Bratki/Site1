class AddFireplaceIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :fireplace_id, :integer
  end
end
