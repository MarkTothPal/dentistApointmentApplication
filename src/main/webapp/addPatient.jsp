<%@ page import="model.Patient, repository.JpaPatientRepository" %>


<%
  String name = request.getParameter("patient_name");
  String email = request.getParameter("Patient_email");

  Patient patient = new Patient(name, email);

  JpaPatientRepository patientRepo = new JpaPatientRepository();

  patientRepo.addPatient(patient);

%>

  <meta http-equiv="Refresh" content="0; url='/world" />