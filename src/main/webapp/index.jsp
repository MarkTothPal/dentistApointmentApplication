<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.JdbcPatientRepository" %>
<%@ page import="repository.JpaPatientRepository" %>
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
            <th>Delete</th>
            <th>Update</th>
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
                <td><a href="updatePatient.jsp?id=<%=patients.getId() %>"><button type="button"  class="update">Update</button></a></td>
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

    </form>
  <h2> Delete a patient </h2>
    <form action="deletePatient.jsp">
        <div class="form-outline mb-4">
            <input type="text" name="name" value="Name..." onclick="this.value=''"/><br/>
        </div>
        <div class="form-outline mb-4">
                    <input type="text" name="email"  value="Email..." onclick="this.value=''"/><br/>
                </div>
  <br/>
  <input type="submit" value="Delete Patient" class="btn btn-primary btn-block"/>


    <h2>Do some magic</h2>

</body>
</html>
