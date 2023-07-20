<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.JdbcPatientRepository" %>
<%@ page import="repository.JpaPatientRepository" %>
<%@ page import="model.Patient" %>
<%@ page import="java.lang.*" %>
<html>
<body>
<%
    String idString = request.getParameter("id");
    %>

     <table border="1" class="table table-striped table-hover w-50 p-3">
            <tr>
                <th>Name</th>
                <th>Email</th>
                </tr>
            <%
                JdbcPatientRepository repository = new JdbcPatientRepository();
                //JpaPatientRepository repository = new JpaPatientRepository();
                List<Patient> patient = repository.selectPatient();
                for (Patient patients : patient) {
            %>
                <tr>
                    <td><%= patients.getName() %></td>
                    <td><%= patients.getEmail() %></td>

                </tr>

            <% } %>
        </table>
        <form action="updatePatient.jsp">
                <div class="form-outline mb-4">
                    <input type="text" name="name" value="Name..." onclick="this.value=''"/><br/>
                </div>
                <div class="form-outline mb-4">
                    <input type="text" name="email"  value="Email..." onclick="this.value=''"/><br/>
                </div>

            <br/>

            <input type="submit" value="Update Patient" class="btn btn-primary btn-block"/>

</body>
</html>