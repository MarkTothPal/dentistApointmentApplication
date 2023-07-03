<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.JdbcPatientRepository" %>
<%@ page import="model.Patient" %>
<html>
<body>
<h2>Hello World!</h2>

<h2>Patient List from the index.jsp file</h2>
    <table border="1" class="table table-striped table-hover w-50 p-3">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        <%
            JdbcPatientRepository repository = new JdbcPatientRepository();
            List<Patient> patient = repository.getAllPatients();
            for (Patient patients : patient) {
        %>
            <tr>
                <td><%= patients.getId() %></td>
                <td><%= patients.getName() %></td>
                <td><%= patients.getEmail() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
