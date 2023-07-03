
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
            //JpaPatientRepository repository = new JpaPatientRepository();
            List<Patient> patient = repository.getAllPatients();
            for (Patient patient : patients) {
        %>
            <tr>
                <td><%= patient.getId() %></td>
                <td><%= patient.getName() %></td>
                <td><%= patient.getEmail() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
