<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="eprofile.css" rel="stylesheet">
    <asset:stylesheet src="eprofile.css"></asset:stylesheet>
    <title>Edit Profile Link sharing app</title>
    <!-- <style>
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
        #l2{
    width: 40rem;

}
#l3{
    width: 40rem;

}
body{
            background-color:powderblue;
        }
    </style> -->
</head>

<body style="background-image: url('banner.jpg')">

<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <g:link controller="dashboard" action="dashboard">
                Link Sharing
            </g:link>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <form class="d-flex" style="margin-left: 500px">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="margin-left: 150px">


                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">

                            ${session.user.userName}

                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Profile</a></li>

                            <li><a class="dropdown-item" href="/User/logout">Logout</a></li>


                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>


<div class="container-fluid">
    <div class="row g-3">
        <div class="col-md-6">
            <div class="row mt-2"> </div>
            <div class="row mt-2"> </div>
            <div class="card" style="width: 25rem;">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <figure class="figure">
                                <asset:image src="/profile/${session.user.userName}.png"  height="110px" width="80px"/>
                            </figure>
                        </div>
                        <div class="col-auto">
                            <div class="row">
                                <h5 class="card-title">${session.user.firstName} ${session.user.lastName}</h5>
                                <h6 class="card-subtitle mb-2 text-muted">@${session.user.userName}</h6>
                            </div>
                            <div class="row">
                                <div class="col-auto">


                                    <h9 class="text-muted">Subscriptions</h9>
                                    <a href="#" class="card-link">${escount}</a>

                                </div>
                                <div class="col">
                                    <h9 class="text-muted">Topics</h9>
                                    <a href="#" class="card-link">${etcount}</a>

                                </div>
                            </div>


                        </div>

                    </div>

                </div>
            </div>

            <div class="row mt-2"> </div>
            <div class="row mt-2"> </div>

            <div class="card" id="cardd">
                <div class="card-header">
                    Topics
                </div>

                <g:each in="${mytop}" var="it">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-auto">
                                <figure class="figure" id="fif">
                                    <asset:image src="${session.user.photo}" width="80px" height="90px"/>
                                </figure>

                            </div>
                            <div class="col">
                                <div class="row">
                                    <h5 class="card-title">
                                        <div class="row">
                                            <div class="col-auto">
                                                <input class="form-control" type="text" placeholder="Default input">
                                            </div>
                                            <div class="col-auto">
                                                <button type="button" class="btn btn-primary">Save</button>
                                            </div>

                                        </div>

                                    </h5>

                                </div>
                                <div class="row">
                                    <div class="col">


                                        <h9 class="text-muted">Subscriptions</h9>
                                        <a href="#" class="card-link">${it.subscribers.size()}</a>

                                    </div>

                                    <div class="col">
                                        <h9 class="text-muted">Posts</h9>
                                        <a href="#" class="card-link">${it.resources.size()}</a>

                                    </div>

                                    <div class="col">
                                        <h9 class="text-muted">@${session.user.userName}</h9>

                                    </div>

                                </div>


                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <g:form controller="subscription" action="changeSeriousness">
                                    <g:field type="hidden" name="id" value="${it.id}"></g:field>
                                    <g:select onChange="submit()" class="form-control" name="seriousness" from="${['CASUAL','SERIOUS','VERY_SERIOUS']}" value="${linksharing.Subscription.findByUserAndTopic(session.user,it).seriousness}" />
                                </g:form>
                            </div>

                            <div class="col">
                                <g:form controller="subscription" action="changeVisibility">
                                    <g:field type="hidden" name="id" value="${it.id}"></g:field>
                                    <g:select onChange="submit()" class="form-control" name="visibility" from="${['PUBLIC','PRIVATE']}" value="${it.visibility}" />
                                </g:form>
                            </div>
                            <div class="col-auto">
                                <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                  height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                    <path
                                            d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z" />
                                </svg></a>


                            </div>
                            <div class="col-auto">
                                <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                  height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                    <path
                                            d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                    <path
                                            d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                                </svg></a>


                            </div>
                            <div class="col">
                                <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                  height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                    <path
                                            d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                    <path fill-rule="evenodd"
                                          d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                </svg></a>


                            </div>




                        </div>


                    </div>
                </g:each>

            </div>



            <div class="row mt-2"> </div>
            <div class="row mt-2"> </div>







        </div>
        <div class="col-md-6">
            <div class="row mt-2"> </div>
            <div class="row mt-2"> </div>
            <div class="col-md-6">
                <div class="card" id="l3">
                    <h5 class="card-header">Update profile</h5>
                    <div class="card-body">
                        <form action="/user/updateProfile" enctype="multipart/form-data" method="post">
                            <div class="mb-3">
                                <label for="formGroupExampleInput" class="form-label">First name *</label>
                                <input type="text" name="firstName" class="form-control" id="formGroupExampleInput" placeholder=""
                                       required>
                            </div>
                            <div class="mb-3">
                                <label for="formGroupExampleInput" class="form-label">Last name *</label>
                                <input type="text" name="lastName" class="form-control" id="formGroupExampleInput" placeholder=""
                                       required>
                            </div>
                            <div class="mb-3">
                                <label for="formGroupExampleInput" class="form-label">User name *</label>
                                <input type="text" name="userName" class="form-control" id="formGroupExampleInput" placeholder=""
                                       required>
                            </div>



                            <div class="mb-3">
                                <label for="formFileSm" class="form-label">Photo</label>
                                <input class="form-control form-control-sm" name="image" id="formFileSm" type="file">
                            </div>
                            <button type="submit" name="register" class="btn btn-primary" id="l1">Update</button>
                        </form>
                    </div>
                </div>

                <div class="row mt-2"> </div>
                <div class="row mt-2"> </div>


                <div class="card" id="l2">
                    <h5 class="card-header">Change Password</h5>
                    <div class="card-body">

                        <form action="/user/updatePassword" method="POST">
                            <h1>${flash.msg}</h1>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password *</label>
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" required>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Confirm Password *</label>
                                <input type="password" name="confPassword" class="form-control" id="exampleInputPassword2" required>
                            </div>
                            <div class="row">
                                <div class="col">

                                </div>
                                <div class="col">
                                    <button type="submit" class="btn btn-primary" id="l1">Update</button>
                                </div>


                            </div>


                        </form>
                    </div>
                </div>

            </div>

        </div>
        <div class="row-mt-2"></div>

    </div>
</div>






<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
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

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>