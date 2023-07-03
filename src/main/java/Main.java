import model.Patient;
import repository.JdbcPatientRepository;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        JdbcPatientRepository repository = new JdbcPatientRepository();
        List<Patient> patients = repository.getAllPatients();
        for (Patient patient: patients){
            System.out.println(patient);
        }
    }
}
