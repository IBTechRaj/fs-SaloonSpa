class RemoveColumnServiceRefFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :service_id
  end
end
