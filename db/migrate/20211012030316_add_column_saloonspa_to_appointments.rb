class AddColumnSaloonspaToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :saloonspa, null: false, foreign_key: true
  end
end
