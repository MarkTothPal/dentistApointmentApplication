package repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import model.Patient;

import java.util.List;

public class JpaPatientRepository {
    EntityManagerFactory emFactory = Persistence.createEntityManagerFactory("Eclipselink_JPA");
    EntityManager entityManager = emFactory.createEntityManager();

    public List<Patient> getAllPatients() {

        TypedQuery<Patient> typedQuery = entityManager.createQuery("select s from Patient s", Patient.class);
        List<Patient> patientList = typedQuery.getResultList();
        entityManager.close();
        emFactory.close();
        return patientList;


//        List<Student> studentList = typedQuery.getResultList();
//        return studentList;

//        Query that does not check for type (UNSAFE)
//        Query query = entityManager.createQuery("select s from Student s");
    }



    public void addStudent(Patient patient) {
        entityManager.getTransaction().begin();
        entityManager.persist(patient);
        entityManager.getTransaction().commit();
        entityManager.close();
    }
}
