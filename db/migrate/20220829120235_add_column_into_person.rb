class AddColumnIntoPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :check_box, :boolean
    add_column :people, :email, :text
    add_column :people, :email_confirmation, :text
    add_column :people, :level, :integer
    add_column :people, :password, :text
    add_column :people, :password_c, :text
    

    add_column :people, :gender, :string
  end
end
