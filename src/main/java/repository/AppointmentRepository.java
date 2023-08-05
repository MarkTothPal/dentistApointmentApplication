package repository;

import model.Appointment;
import model.Patient;
import model.dto.CreateAppointmentDto;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class AppointmentRepository extends JdbcRepository {
    public AppointmentRepository() {
        getConnection();
    }

    public List<Appointment> getAllAppointments() {
        List<Appointment> appointmentList = new ArrayList<>();
        String sql = "SELECT public.appointments.appointment_id, public.patients.patient_name, public.services.service_name, public.appointments.appointment_date From public.appointments INNER JOIN public.patients ON public.appointments.patient_id = public.patients.patient_id INNER JOIN public.services ON public.appointments.service_id = public.services.service_id";
        try (Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                int id = resultSet.getInt("appointment_id");
                String patientName = resultSet.getString("patient_name");
                String  serviceName= resultSet.getString("Service_name");
                Date appointmentDate = resultSet.getDate("appointment_date");

                Appointment appointment = new Appointment();
                appointment.setId(id);
                appointment.setPatientName(patientName);
                appointment.setServiceName(serviceName);
                appointment.setDate(appointmentDate.toLocalDate());

                appointmentList.add(appointment);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return appointmentList;
    }

    public void addAppointment(CreateAppointmentDto createAppointmentDto) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("INSERT INTO public.appointments(patient_id, service_id, appointment_date) VALUES (?, ?, ?)")) {
            statement.setInt(1, createAppointmentDto.getPatient_id());
            statement.setInt(2, createAppointmentDto.getService_id());
            statement.setDate(3, Date.valueOf(createAppointmentDto.getDate()));
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletePatient(int id) {

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("DELETE FROM public.patients WHERE patient_id = ?")) {
            statement.setInt(1, id);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


