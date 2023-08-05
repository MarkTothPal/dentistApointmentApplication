<html>
<head>
<style>
body {
  background-image: url('Die-Praxis1.jpg');
  height: 100%;
  background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
div {
  width: 320px;
  padding: 10px;
  border: 5px solid gray;
  margin: 0;
  background-color: white;
}
</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>
<body>
<div>
    <a href= "patientJsps/patientCatalog.jsp"> Patient Catalog</a>
    <a href= "serviceJsps/serviceCatalog.jsp"> Service Catalog</a>
    <a href= "appointmentJsps/appointmentCatalog.jsp"> Appointment Catalog</a>
    <p>Date: <input type="text" id="datepicker"></p>
</div>
</body>
</html>