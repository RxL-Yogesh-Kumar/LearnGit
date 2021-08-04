<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login ans Register Form</title>
    <asset:stylesheet src= "style.css"></asset:stylesheet>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
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
                    <div class="card-body">
                        <div>
                            <asset:image src="/img/download.png" class="img-responsive" alt="..."/>
                            <div style="display: inline"><p  class="col-sm-9" id="test1">some random text some random text some random text some random text some random text some random text</p></div>

                        </div>

                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                        <a href="#" class="col-lg-6">download</a>
                        <a href="#" class="col-lg-6">mark as read</a>
                        <a href="#" class="col-lg-6">view post</a>
                    </div>
                </div>
            </div><div class="card " id="card2" style="margin-top: 15px; margin-bottom: 15px;">
            <div>
                <div class="card-header">Top post</div>
                <div class="card-body">
                    <div>
                        <asset:image src="/img/download.png" class="img-responsive" alt="..."/>
                        <div style="display: inline"><p  class="col-sm-9" id="test2">some random text some random text some random text some random text some random text some random text</p></div>

                    </div>

                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                    <a href="#" class="col-lg-6">download</a>
                    <a href="#" class="col-lg-6">mark as read</a>
                    <a href="#" class="col-lg-6">view post</a>
                </div>
            </div>
        </div>

        </div>

    </div>
    <div class="user-div">
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
                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">

                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>


        </div>

    </div>

</div>

</body>

</html>