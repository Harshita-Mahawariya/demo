class CreateMarkDeleteds < ActiveRecord::Migration[6.1]
  def change
    create_table :mark_deleteds do |t|

      t.timestamps
    end
  end
end
