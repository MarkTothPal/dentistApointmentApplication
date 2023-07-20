<%@ page import="model.Patient, repository.JdbcPatientRepository" %>
<%@ page import="java.lang.*" %>

<%

  String name = request.getParameter("name");
    String email = request.getParameter("email");

    Patient patient = new Patient(name, email);


  JdbcPatientRepository repository = new JdbcPatientRepository();
  //JpaPatientRepository repository = new JpaPatientRepository();

  repository.updatePatient(patient);

%>

  <meta http-equiv="Refresh" content="0; url='/dentistApointmentApplication" />