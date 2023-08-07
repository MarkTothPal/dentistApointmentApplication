<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.AppointmentRepository" %>>
<%@ page import="model.Appointment" %>
<%@ page import="repository.ServiceRepository" %>
<%@ page import="model.Service" %>
<%@ page import="java.lang.*" %>

<html>
<head>
    <!-- This will make the table look nicer -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Appointment Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
</head>
<body>

    <%
    String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);
    String nameString = request.getParameter("name");

    %>
    <h2>Create appointment for <%= nameString%></h2>
    <form method="post" action="submitAppointment.jsp">
            <input type="hidden" name="id" value="<%=id%>">
        <div class="form-outline mb-4">

            <select id="service" name="service">
                <%
                            ServiceRepository repository = new ServiceRepository();

                            List<Service> service = repository.getAllServices();
                            for (Service services : service) {
                %>

                    <option value ="<%=services.getId()%>"><%=services.getName()%></option>
                <%}%>
            </select>
        </div>
        <div class="form-outline mb-4">
            <input type="date" name="date"><br/>
        </div>

    <br/>

    <input type="submit" value="Create appointment" class="btn btn-primary btn-block"/>
    </form>
</body>
</html>