class AddBioToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :bio, :text
  end
end
