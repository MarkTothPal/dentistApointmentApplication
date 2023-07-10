<%@ page import="model.Patient, repository.JdbcPatientRepository" %>


<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");

  Patient patient = new Patient(name, email);

  JdbcPatientRepository repository = new JdbcPatientRepository();

  repository.addPatient(patient);

%>

  <meta http-equiv="Refresh" content="0; url='/dentistApointmentApplication" />