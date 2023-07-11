<%@ page import="model.Patient, repository.JdbcPatientRepository" %>
<%@ page import="model.Patient, repository.JpaPatientRepository" %>


<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");

  Patient patient = new Patient(name, email);

  JdbcPatientRepository repository = new JdbcPatientRepository();
  //JpaPatientRepository repository = new JpaPatientRepository();

  repository.addPatient(patient);

%>

  <meta http-equiv="Refresh" content="0; url='/dentistApointmentApplication" />