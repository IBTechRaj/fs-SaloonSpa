class DropColumnFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :saloonspa
  end
end
