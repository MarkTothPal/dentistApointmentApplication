<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.JdbcPatientRepository" %>
<%@ page import="repository.JpaPatientRepository" %>
<%@ page import="model.Patient" %>
<%@ page import="java.lang.*" %>
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
<%
    String idString = request.getParameter("id");
    int id = Integer.parseInt(idString);
    String nameString = request.getParameter("name");
    String emailString = request.getParameter("email");
    %>

     <table border="1" class="table table-striped table-hover w-50 p-3">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                </tr>
            <%
                JdbcPatientRepository repository = new JdbcPatientRepository();
                //JpaPatientRepository repository = new JpaPatientRepository();
                List<Patient> patient = repository.selectPatient(id);
                for (Patient patients : patient) {
            %>
                <tr>
                    <td><%= patients.getId()%></td>
                    <td><%= patients.getName() %></td>
                    <td><%= patients.getEmail() %></td>

                </tr>


        </table>
        <form method="post" action="updatePatient.jsp">
        <input type="hidden" name="id" value="<%=patients.getId() %>">
        <br>
        Name:<br>
        <input type="text" name="name" value="<%=patients.getName() %>">
        <br>
        Email Id:<br>
        <input type="email" name="email" value="<%=patients.getEmail()%>">
        <br><br>
        <input type="submit" value="submit">
        </form>
        <% } %>
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