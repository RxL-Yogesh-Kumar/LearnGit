<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
</head>
<body>



<!-- table -->
<table id="table_id" class="display" data-page-length='20'>
    <thead>
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>E-mail</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Active</th>
        <th>Manage</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${user}">
        <tr>
            <td>${it.firstName} ${it.lastName}</td>
            <td>${it.userName}</td>
            <td>${it.email}</td>
            <td>${it.firstName}</td>
            <td>${it.lastName}</td>
        </tr>
    </g:each>
    </tbody>
</table>




<script type="text/javascript">
    $(document).ready( function () {
        $('#table_id').DataTable();
    });



    $('#table_id').DataTable( {
        "columnDefs": [
            {"className": "dt-center", "targets": "_all"}
        ]
    } );
</script>

</body>
</html>