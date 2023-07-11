<%@ page import="model.Patient, repository.JdbcPatientRepository" %>
<%@ page import="java.lang.*" %>

<%

   String idString=request.getParameter("id");
   int id = Integer.parseInt(idString);


  JdbcPatientRepository repository = new JdbcPatientRepository();
  //JpaPatientRepository repository = new JpaPatientRepository();

  repository.deletePatient(id);

%>

  <meta http-equiv="Refresh" content="0; url='/world" />