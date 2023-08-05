<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="repository.ServiceRepository" %>
<%@ page import="model.Service" %>
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

    %>

     <table border="1" class="table table-striped table-hover w-50 p-3">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                </tr>
            <%
                ServiceRepository repository = new ServiceRepository();

                List<Service> service = repository.selectService(id);
                for (Service services : service) {
            %>
                <tr>
                    <td><%= services.getId()%></td>
                    <td><%= services.getName() %></td>
                    <td><%= services.getPrice() %></td>

                </tr>


        </table>
        <form method="post" action="updateService.jsp">
        <input type="hidden" name="id" value="<%=services.getId() %>">
        <br>
        Name:<br>
        <input type="text" name="name" value="">
        <br>
        Email Id:<br>
        <input type="number" name="price" value="">
        <br><br>
        <input type="submit" value="submit">
        </form>
        <% } %>

</body>
</html>