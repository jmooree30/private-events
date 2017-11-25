class AddEventToInvitations < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :event, :string
  end
end
