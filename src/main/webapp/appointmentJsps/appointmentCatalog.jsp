<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.AppointmentRepository" %>
<%@ page import="model.Appointment" %>
<html>
<head>
    <!-- This will make the table look nicer -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Very nice student list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
  </head>
<body>

<h2>Patient List from the index.jsp file</h2>
    <table border="1" class="table table-striped table-hover w-50 p-3">
        <tr>
            <th>Name</th>
            <th>Service</th>
            <th>Date</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>
        <%
            AppointmentRepository repository = new AppointmentRepository();

            List<Appointment> appointment = repository.getAllAppointments();
            for (Appointment appointments : appointment) {
        %>
            <tr>
                <td><%= appointments.getPatientName() %></td>
                <td><%= appointments.getServiceName() %></td>
                <td><%= appointments.getDate()%></td>
                <td><a href="deletePatient.jsp?id=<%=appointments.getId()%>"><button type="button"  class="btn btn-primary btn-block">Delete</button></a></td>
                <td><a href="updatePagePatient.jsp?id=<%=appointments.getId()%>"><button type="button"  class="btn btn-primary btn-block">Update</button></a></td>

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