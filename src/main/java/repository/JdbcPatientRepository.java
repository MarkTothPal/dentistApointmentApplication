package repository;

import model.Patient;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JdbcPatientRepository{
    public JdbcPatientRepository() {
        getConnection();
    }
    public static final String JDBC_DRIVER = "org.postgresql.Driver";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/patient";
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "root";

    public Connection getConnection() {
        try {
            Class.forName(JDBC_DRIVER);
            return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (Exception e) {
            throw new RuntimeException("Can't connect to the db" + e.getMessage());
        }
    }

    public List<Patient> getAllPatients() {
        List<Patient> patientList = new ArrayList<>();

        try (Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM public.patients")) {

            while (resultSet.next()) {
                int id = resultSet.getInt("patient_id");
                String name = resultSet.getString("patient_name");
                String email = resultSet.getString("patient_email");

                Patient patient = new Patient();
                patient.setId(id);
                patient.setName(name);
                patient.setEmail(email);

                patientList.add(patient);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return patientList;
    }

    public void addPatient(Patient patient) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("INSERT INTO public.patients (patient_name, patient_email) VALUES (?, ?)")) {

            statement.setString(1, patient.getName());
            statement.setString(2, patient.getEmail());
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePatient(Patient patient){
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("")){

        } catch (SQLException e) {
    e.printStackTrace();
        }
    }

}
