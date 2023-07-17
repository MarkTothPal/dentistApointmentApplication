<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.JdbcPatientRepository" %>
<%@ page import="repository.JpaPatientRepository" %>
<%@ page import="model.Patient" %>
<html>
<body>

<h2>Patient List from the index.jsp file</h2>
    <table border="1" class="table table-striped table-hover w-50 p-3">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Delete</th>
        </tr>
        <%
            JdbcPatientRepository repository = new JdbcPatientRepository();
            //JpaPatientRepository repository = new JpaPatientRepository();
            List<Patient> patient = repository.getAllPatients();
            for (Patient patients : patient) {
        %>
            <tr>
                <td><%= patients.getId() %></td>
                <td><%= patients.getName() %></td>
                <td><%= patients.getEmail() %></td>
                <td><a href="deletePatient.jsp?id=<%=patients.getId() %>"><button type="button"  class="delete">Delete</button></a></td>
            </tr>

        <% } %>
    </table>
<br/>
<br/>
<h2>Add a patient</h2>

    <form action="addPatient.jsp">
        <div class="form-outline mb-4">
            <input type="text" name="name" value="Name..." onclick="this.value=''"/><br/>
        </div>
        <div class="form-outline mb-4">
            <input type="text" name="email"  value="Email..." onclick="this.value=''"/><br/>
        </div>

    <br/>

    <input type="submit" value="Add Patient" class="btn btn-primary btn-block"/>

</body>
</html>
