class AddInvitedUserToInvitations < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :invited, :string
  end
end
