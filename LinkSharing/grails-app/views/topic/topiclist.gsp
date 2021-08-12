<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="dash.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap5.min.css">
    <title>Topic list</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
    #fif {
        width: 2cm;
        height: 2cm;
    }

    .divider {
        margin-top: 1rem;
        margin-bottom: 1rem;
        border: 0;
        border-top: 1px solid rgba(0, 0, 0, 0.1);
    }
    body{

    }
    </style>
</head>

<body>

<div class="container-fluid">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <g:link controller="dashboard" action="dashboard">
                Link Sharing
            </g:link>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <form class="d-flex" style="margin-left: 300px;">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" name="search" type="submit">Search</button>
            </form>

            <div class="collapse navbar-collapse links" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <button class="btn" data-toggle="modal" data-target="#exampleModalCenter" title="create topic" style="margin-left: 30px;"><i
                            class="fas fa-link fa-lg" style=" font-size: 22px;display: block"></i>
                    </button>

                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle"><b>CREATE TOPIC</b></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <g:form controller="topic" action="addTopic">
                                    <div class="modal-body">

                                        <div class="row " style="margin-top: 20px; ">
                                            <label  class="col-sm-5 col-form-label"><b>Name*:</b></label>

                                            <div class="col-sm-7"><input type="textarea" name="topicName"
                                                                         class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                         placeholder="Enter Name" required>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <label  class="col-sm-5 col-form-label"><b> Visibility*:</b></label>

                                            <div class="col-sm-7" required>
                                                <select class="form-control" name="visibility" id="createsel">
                                                    <option >PRIVATE</option>
                                                    <option>PUBLIC</option>
                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                    </div>
                                </g:form>

                            </div>
                        </div>
                    </div>

                    <button class="btn" data-toggle="modal" data-target="#invite" title="Send Invitation"><i
                            class="fas fa-envelope" style=" font-size: 22px;display: block"></i>
                    </button>
                    <div class="modal fade" id="invite" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="invite"><b>Send Invite</b></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <div class="row " style="margin-top: 20px; ">
                                        <label  class="col-sm-5 col-form-label"><b>E-Mail*:</b></label>

                                        <div class="col-sm-7"><input type="textarea" name="name"
                                                                     class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                     placeholder="Enter Email" required>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                        <div class="col-sm-7" required>
                                            <select class="form-control" id="sel1">
                                                <option>public</option>
                                                <option>private</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary " data-dismiss="modal">Invite</button>
                                    <button type="button" class="btn btn-secondary">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="btn" data-toggle="modal" data-target="#shareLink" title="create topic"><i
                            class="fas fa-link fa-lg" style=" font-size: 22px;display: block"></i>
                    </button>

                    <div class="modal fade" id="shareLink" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="shareLink"><b>Share link</b></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <div class="row " style="margin-top: 20px; ">
                                        <label  class="col-sm-5 col-form-label"><b>Link*:</b></label>

                                        <div class="col-sm-7"><input type="textarea" name="name"
                                                                     class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                     placeholder="Enter Name" required>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="exampleFormControlTextarea1" class="form-label"><b>Description</b></label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>

                                    <div class="row">
                                        <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                        <div class="col-sm-7" required>
                                            <select class="form-control" id="sel1">
                                                <option>public</option>
                                                <option>private</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="btn" data-toggle="modal" data-target="#shareDoc" title="create topic"><i
                            class="fas fa-file fa-lg" style=" font-size: 22px;display: block"></i>
                    </button>

                    <div class="modal fade" id="shareDoc" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="shareDoc"><b>Share Document</b></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <div class="row " style="margin-top: 20px; ">
                                        <label  class="col-sm-5 col-form-label"><b>Link*:</b></label>

                                        <div class="col-sm-7"><input type="file" name="name"
                                                                     class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                     placeholder="attach file" required>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="exampleFormControlTextarea1" class="form-label"><b>Description</b></label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>

                                    <div class="row">
                                        <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                        <div class="col-sm-7" required>
                                            <select class="form-control" id="">
                                                <option>PUBLIC</option>
                                                <option>PRIVATE</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Share</button>
                                    <button type="button" class="btn btn-secondary ">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <li class="nav-item dropdown" style="margin-left: 40px;">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            ${session.user.userName}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><a class="dropdown-item" href="/user/admin">Users</a></li>
                            <li><a class="dropdown-item" href="/topic/toplist">Topic</a></li>
                            <li><a class="dropdown-item" href="#">Post</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="/User/logout">Logout</a></li>
                        </ul>
                    </li>

                </ul>

            </div>
        </div>
    </nav>


</div>

<div class="row mt-2"> </div>
<div class="row mt-2"> </div>
<div class="container-fluid">
    <div class="card">
        <table id="example" class="table table-striped" style="width:100%">
            <thead>
            <tr>

                <th>ID</th>
                <th>Topic Name</th>
                <th>Created By</th>
                <th>Visibilty</th>
                <th>Manage</th>
            </tr>
            </thead>
            <tbody>
            <g:each var="Topic" in="${topicl}">
                <tr>
                    <td>${Topic.id}</td>
                    <td>${Topic.topicName}</td>
                    <td>${Topic.createdBy.userName}</td>
                    <td>${Topic.visibility}</td>
                    <td> <g:link controller="topic" action="deleteTopic" params="[id:Topic.id]" onclick="return confirm('Are you sure you want to delete this item')">DELETE</g:link></td>

                </tr>
            </g:each>


            </tbody>
            <tfoot>
            <tr>

            </tr>
            </tfoot>
        </table>
    </div>
    <div class="row-mt-2"></div>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.min.js"></script>

<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
</script>
<script>
    var myModal = document.getElementById('myModal')
    var myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', function () {
        myInput.focus()
    })
</script>
<script>
    var myModal = document.getElementById('myModal')
    var myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', function () {
        myInput.focus()
    })
</script>
<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>






<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.colVis.min.js"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>