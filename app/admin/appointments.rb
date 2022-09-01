ActiveAdmin.register Appointment do
    permit_params :physician_id, :patient_id, :appointment_date
end
