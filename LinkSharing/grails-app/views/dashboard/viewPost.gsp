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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="dashboard.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <asset:javascript src="Rating.js"/>
    <asset:stylesheet src="viewpost.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Post Link sharing app</title>
    <script>
        var rateurl = "${createLink(controller: 'resourceRating',action: 'rate')}"
    </script>
    <style>

    </style>
</head>

<body>

<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Link Sharing</a>
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


<div class="container-fluid">
    <div class="row g-3">
        <div class="col-md-6">
            <div class="row mt-2"> </div>
            <div class="row mt-2"> </div>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-auto">
                            <figure class="figure" id="fif">
                                <asset:image src="${resource.createdBy.photo}" width="80px" height="90px"/>
                            </figure>
                        </div>
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title">${resource.createdBy.firstName} ${resource.createdBy.lastName} <h6
                                            class="card-subtitle mb-2 text-muted">@${resource.createdBy.userName}
                                        ${resource.lastUpdated}</h6>
                                    </h5>
                                </div>
                                <div class="col">
                                    <div class="mb-3">
                                        <a href="#" class="link-primary">${resource.topic.topicName}</a>
                                    </div>
                                </div>
                            </div>
                            <form id="rating-form">
                            <span class="rating-star">
                                <input type="radio" name="rating" value="5" onclick="rate(${resource.id},5)"><span class="star"></span>

                                <input type="radio" name="rating" value="4" onclick="rate(${resource.id},4)"><span class="star"></span>

                                <input type="radio" name="rating" value="3" onclick="rate(${resource.id},3)"><span class="star"></span>

                                <input type="radio" name="rating" value="2" onclick="rate(${resource.id},2)"><span class="star"></span>

                                <input type="radio" name="rating" value="1" onclick="rate(${resource.id},1)"><span class="star"></span>
                            </span>
                        </form>
                        </div>
                    </div>

                    <div class="row">
                        <p>${resource.description}</p>

                    </div>



                    <div class="row">
                        <div class="col">

                            <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                <path
                                        d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                            </svg></a>
                            <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                <path
                                        d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                            </svg></a>
                            <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                <path
                                        d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                            </svg></a>


                        </div>
                        <div class="col-auto">
                            <div class="mb-3">
                                <a href="#" class="link-primary">Delete</a>
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="mb-3">
                                <a href="#" class="link-primary">Edit</a>
                            </div>
                        </div>
                        <g:if test="${resource.hasProperty("filePath")}">
                            <div class="col-auto">
                                <div class="mb-3">
                                    <g:link controller="resource" action="saveFile" params="[id:it.id]" class="link-primary">Download</g:link>
                                </div>
                            </div>
                        </g:if>

                        <g:else>
                            <div class="col-auto">
                                <div class="mb-3">
                                    <a href="${resource.link}" target="_blank" class="link-primary">Open Link</a>
                                </div>
                            </div>
                        </g:else>

                    </div>

                </div>
            </div>

        </div>





        <div class="col-md-6">
            <div class="row mt-2"> </div>
            <div class="row mt-2"> </div>

            <div class="card" id="cardd">
                <div class="card-header">
                    Trending Topics
                </div>
%{--                <div class="card-body">
                    <div class="row">
                        <div class="col-auto">
                            <figure class="figure" id="fif">
                                <img src="https://www.searchpng.com/wp-content/uploads/2019/02/User-Icon-PNG.png" id="pi1"
                                     class="figure-img img-fluid rounded" alt="...">
                            </figure>
                        </div>
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <div class="mb-3">
                                        Uday Pratap Singh

                                    </div>
                                </div>
                                <div class="col-auto">

                                    <a href="#" class="link-primary">Grails</a>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">


                                    <h9 class="text-muted">Subscriptions</h9>
                                    <a href="#" class="card-link">30</a>

                                </div>

                                <div class="col">
                                    <h9 class="text-muted">Topics</h9>
                                    <a href="#" class="card-link">30</a>

                                </div>

                                <div class="col">
                                    <h9 class="text-muted">@Uday</h9>
                                    <a href="#" class="card-link">Unsubscribed</a>

                                </div>

                            </div>


                        </div>

                    </div>

                </div>
                <div class="divider"></div>--}%
                %{--<div class="card-body">
                    <div class="row">
                        <div class="col-auto">
                            <figure class="figure" id="fif">
                                <img src="https://www.searchpng.com/wp-content/uploads/2019/02/User-Icon-PNG.png" id="pi1"
                                     class="figure-img img-fluid rounded" alt="...">
                            </figure>

                        </div>
                        <div class="col">
                            <div class="row">
                                <div class="card-title">
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                Uday Pratap Singh

                                            </div>
                                        </div>
                                        <div class="col-auto">

                                            <a href="#" class="link-primary">Grails</a>

                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col">


                                    <h9 class="text-muted">Subscriptions</h9>
                                    <a href="#" class="card-link">30</a>

                                </div>

                                <div class="col">
                                    <h9 class="text-muted">Topics</h9>
                                    <a href="#" class="card-link">30</a>

                                </div>

                                <div class="col">
                                    <h9 class="text-muted">@Uday</h9>
                                    <a href="#" class="card-link">Unsubscribed</a>

                                </div>

                            </div>


                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example">

                                <option >Serious</option>
                                <option >Very Serious</option>
                                <option>Casual</option>
                            </select>
                        </div>
                        <div class="col">
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                <option selected>select</option>
                                <option value="1">Pubic</option>
                                <option value="2">Private</option>

                            </select>
                        </div>
                        <div class="col-auto">
                            <a href="#" class="link-primary">Edit</a>


                        </div>
                        <div class="col">
                            <a href="#" class="link-primary">Delete</a>


                        </div>





                    </div>


                </div>--}%
            </div>

        </div>

    </div>
    <div class="row-mt-2"></div>
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



