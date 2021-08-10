<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
        <th>Role</th>
    </tr>
    </thead>
    <tbody>




        <tr>
        <g:each in="${user}" var="it">
            <td>${it.id}</td>
            <td>${it.userName}</td>
            <td>${it.email}</td>
            <td>${it.firstName}</td>
            <td>${it.lastName}</td>
            <td>${it.active}</td>
            <td>
                <button type="button" class="btn btn-danger">
                <g:if test="${it.isActive()}">
                    <g:link controller="user" action="deactivateUser" params="${[name:it.userName]}">Deactivate</g:link>
                </g:if>

                <g:else>
                    <g:link controller="user" action="activateUser" params="${[name:it.userName]}">Activate</g:link>
                </g:else>
                    </button>

            </td>
            <td>
                <g:if test="${it.isAdmin()}">
                    admin
                </g:if>

                <g:else>
                    Normal user
                </g:else>
            </td>
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