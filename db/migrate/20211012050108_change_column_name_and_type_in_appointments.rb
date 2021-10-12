class ChangeColumnNameAndTypeInAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :service_id
    add_column :appointments, :service, :string
  end
end
