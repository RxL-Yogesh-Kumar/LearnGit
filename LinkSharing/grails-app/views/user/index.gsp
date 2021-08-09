<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login ans Register Form</title><div class="card-body" >
                   %{-- <div class="row">
                        <div class="col-auto">
                            <figure class="figure" id="fif">
                                <asset:image src="${it.createdBy.photo}" width="65px" height="80px"/>
                            </figure>
                        </div>
                        <div class="col">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title">${it.createdBy.firstName} ${it.createdBy.lastName} <h6
                                            class="card-subtitle mb-2 text-muted">@${it.createdBy.userName}
                                    </h6>
                                    </h5>
                                </div>
                                <div class="col">
                                    <div class="mb-3">
                                        Topic Name:  <a href="#" class="link-primary">${it.topic.topicName}</a>
                                    </div>
                                </div>
                            </div>
                            <p class="card-text">${it.description}</p>

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
                                        ${it.lastUpdated}
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="mb-3">
                                        <a href="#" class="link-primary">View Post</a>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>--}%
    <asset:stylesheet src= "style.css"></asset:stylesheet>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">

    <style>
    body {
        background-image: url(../assets/images/img/download.png);

    }
    </style>

</head>



<body>


<div class="container" >
    <nav class="navbar navbar-light bg-light justify-content-between" style = "width:100%">
        <a class="navbar-brand"><u>Link Sharing</u></a>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </nav>
    <div class="post-div">

        <div class="top-post">


                <div class="card " id="card1" style="margin-top: 15px; margin-bottom: 15px;">
                    <div>
                        <div class="card-header">Recent Shares</div>
                          <g:each in="${resList}">
                          <div class="card-body">
                            <div class="row">
                                <div class="col-auto">
                                    <figure class="figure" id="fif">
                                        <asset:image src="${it.createdBy.photo}" width="65px" height="80px"/>
                                    </figure>
                                </div>
                                <div class="col">
                                    <div class="row">
                                        <div class="col">
                                            <h5 class="card-title">${it.createdBy.firstName} ${it.createdBy.lastName} <h6
                                                    class="card-subtitle mb-2 text-muted">@${it.createdBy.userName}
                                                </h6>
                                            </h5>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                Topic Name:  <a href="#" class="link-primary">${it.topic.topicName}</a>
                                            </div>
                                        </div>
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
                                                ${it.lastUpdated}
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <div class="mb-3">
                                                <a href="#" class="link-primary">View Post</a>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
            </g:each>
                    </div>
                </div>


            <div class="card " id="card2" style="margin-top: 15px; margin-bottom: 15px;">
                <div class="card-header">Top post</div>
                <g:each  in="${topPost}" var="it">
                    <div class="card-body" >
                        <div class="row">
                            <div class="col-auto">
                                <figure class="figure" id="fif">
                                    <asset:image src="${it.createdBy.photo}" width="65px" height="80px"/>
                                </figure>
                            </div>
                            <div class="col">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title">${it.createdBy.firstName} ${it.createdBy.lastName} <h6
                                                class="card-subtitle mb-2 text-muted">@${it.createdBy.userName}
                                        </h6>
                                        </h5>
                                    </div>
                                    <div class="col">
                                        <div class="mb-3">
                                            Topic Name:  <a href="#" class="link-primary">${it.topic.topicName}</a>
                                        </div>
                                    </div>
                                </div>
                                <p class="card-text">${it.description}</p>

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
                                            ${it.lastUpdated}
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <div class="mb-3">
                                            <a href="#" class="link-primary">View Post</a>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                </g:each>
            </div>
        </div>

        </div>

    </div>
    <div class="user-div" >
        <div class="card " id="card1" style="margin-top: 15px; margin-bottom: 15px;">
            <div class="register-div rounded">
                <nav class="navbar navbar-light bg-light" style="background-color: rgb(127, 219, 255);">
                    <a class="navbar-brand" style="float: left;" href="#">
                        Register
                    </a>
                </nav>
                <p id="message2">${flash.success}</p>
                <p id="message3">${flash.error}</p>
                <g:form class="register-form" id="register"  controller="user" action="registerUser" enctype="multipart/form-data">
                    <input type="text" class="input-field form-control" name="firstName" placeholder="First Name" required>
                    <input type="text" class="input-field form-control" name="lastName" placeholder="Last name" required>
                    <input type="email" class="input-field form-control" name="email" placeholder="Email Id" required>
                    <input type="text" class="input-field form-control" name="userName" placeholder="Username" required>
                    <input type="password" class="input-field form-control" name="password" placeholder="Enter Password" required>
                    <input type="password" class="input-field form-control" name="confPassword" placeholder="confirm password" required>
                    <p id="message4">${flash.message}</p>
                    <input type="file"   name="image" id="fileToUpload"><br>
                    <button class="btn btn-primary" type="submit">Register</button>
                </g:form>
            </div>
        </div>

        <div class="card " id="card1" style="margin-top: 15px; margin-bottom: 15px;">
            <div class="login-div rounded" >
                <nav class="navbar navbar-light bg-light rounded" style="background-color: aquamarine;">
                    <div style="text-align:center">
                        <a class="navbar-brand "   href="#" >
                            Login
                        </a>​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
                    </div>


                </nav>
                <form  id="login" action="/user/loginUser">
                    <p id="msg">${flash.msg1}</p>
                    <div class="form-group" >
                        <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email" required>

                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-check">
                        <g:link>Forgot password</g:link>

                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>


            </div>
        </div>


    </div>

</div>

</body>

</html>