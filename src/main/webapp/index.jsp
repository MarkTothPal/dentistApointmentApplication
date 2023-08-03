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
<a href= "patientJsps/patientCatalog.jsp"> Patient Catalog</a>
<p>Date: <input type="text" id="datepicker"></p>
</body>
</html>