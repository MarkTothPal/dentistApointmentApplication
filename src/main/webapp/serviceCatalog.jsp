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

 <table border="1" class="table table-striped table-hover w-50 p-3">
         <tr>
             <th>ID</th>
             <th>Name</th>
             <th>Price</th>
             <th>Delete</th>
             <th>Update</th>
         </tr>
         <%
             ServiceRepository repository = new ServiceRepository();

             List<Service> service = repository.getAllServices();
             for (Service services : service) {
         %>
             <tr>
                 <td><%= services.getId() %></td>
                 <td><%= service.getName() %></td>
                 <td><%= services.getPrice() %></td>
                 <td><a href="deletePatient.jsp?id=<%=patients.getId() %>"><button type="button"  class="delete">Delete</button></a></td>
                 <td><a href="updatePage.jsp?id=<%=patients.getId()%>"><button type="button"  class="update">Update</button></a></td>
             </tr>

         <% } %>
     </table>
</body>
</html>