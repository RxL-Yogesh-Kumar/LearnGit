<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <asset:stylesheet src= "dashboard.css"></asset:stylesheet>
  <title>Dashboard</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="dashboard.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
<h1 >
    ${flash.messagetopic}
</h1>
<h1 >
    ${flash.success}
</h1>
<h1 >
    ${flash.error}
</h1>


<h3>${flash.message}</h3>
<h3>${flash.error1}</h3>
<h3>${flash.message2}</h3>
<h3>${flash.error2}</h3>
<h3>${flash.message3}</h3>
<h3>${flash.error3}</h3>



  <div class="border border-dark" style="margin: 8px; border-radius: 10px;">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <g:link controller="dashboard" action="dashboard">
            Link Sharing
        </g:link>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <g:form controller="search" action="search" class="d-flex" style="margin-left: 300px;">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="word">
          <button class="btn btn-outline-success" name="search" type="submit">Search</button>
        </g:form>

        <div class="collapse navbar-collapse links" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <button class="btn" data-toggle="modal" data-target="#topicModal" title="create topic"><i
                class="fas fa-link fa-lg" style=" font-size: 22px;display: block"></i>
            </button>

              <div class="modal fade" id="topicModal" tabindex="-1" role="dialog"
                   aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLongTitle"><b>CREATE TOPIC</b></h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                              </button>
                          </div>
                          <g:form controller="topic" action="addTopic" name="topicForm">
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
                              <h5 class="modal-title" id="invitee"><b>Share link</b></h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                              </button>
                          </div>

                          <g:form controller="sendMail" action="send">
                              <div class="modal-body">
                                  <div class="row " style="margin-top: 20px; ">
                                      <label  class="col-sm-5 col-form-label"><b>Email:</b></label>

                                      <div class="col-sm-7"><input type="email" name= "email"
                                                                   class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                   placeholder="Enter email" required>
                                      </div>
                                  </div>


                                  <div class="row">
                                      <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                      <div class="col-sm-7" required>


                                          <g:select name="topicName" from="${subList.topic.topicName}"></g:select>
                                      </div>
                                  </div>
                              </div>
                              <div class="modal-footer">
                                  %{--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--}%
                                  <button type="submit" class="btn btn-primary">Send</button>
                              </div>
                          </g:form>



                      </div>
                  </div>
              </div>

             %{-- <div class="modal fade" id="invite" tabindex="-1" role="dialog"
                   aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h5 class="modal-title" id="invite"><b>Send Invite</b></h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                              </button>
                          </div>
                         <g:form controller="sendMail" action="send">
                             <div class="modal-body">
                                 <div class="row " style="margin-top: 20px; ">
                                     <label  class="col-sm-5 col-form-label"><b>E-Mail*:</b></label>

                                     <div class="col-sm-7"><input type="textarea" name="address"
                                                                  class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                  placeholder="Enter Email" required>
                                     </div>
                                 </div>

                                 <div class="row">
                                     <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                     <div class="col-sm-7" required>
                                             <g:select name="topicName" from="${subList.topic.topicName}"></g:select>

                                     </div>
                                 </div>
                             </div>
                             <div class="modal-footer">
                                 <button type="submit" class="btn btn-primary " data-dismiss="modal">Invite</button>
                                 <button type="button" class="btn btn-secondary">Cancel</button>
                             </div>
                         </g:form>



                      </div>
                  </div>
              </div>--}%



            <button class="btn" data-toggle="modal" data-target="#shareLink" title="Share Link"><i
                class="fas fa-link fa-lg" style=" font-size: 22px;display: block"></i>
            </button>

              <div class="modal fade" id="shareLink" tabindex="-1" role="dialog"
                   aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h5 class="modal-title" id="shareLin"><b>Share link</b></h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                              </button>
                          </div>

                          <g:form controller="resource" action="createLink">
                              <div class="modal-body">
                                  <div class="row " style="margin-top: 20px; ">
                                      <label  class="col-sm-5 col-form-label"><b>Link*:</b></label>

                                      <div class="col-sm-7"><input type="textarea" name= "link"
                                                                   class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                   placeholder="Enter Name" required>
                                      </div>
                                  </div>

                                  <div class="mb-3">
                                      <label for="exampleFormControlTextarea1" class="form-label"><b>Description</b></label>
                                      <textarea class="form-control" id="exampleFormControlTextarea1" name="description" rows="3"></textarea>
                                  </div>

                                  <div class="row">
                                      <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                      <div class="col-sm-7" required>


                                          <g:select name="topicName" from="${subList.topic.topicName}"></g:select>
                                      </div>
                                  </div>
                              </div>
                              <div class="modal-footer">
                                  %{--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--}%
                                  <button type="submit" class="btn btn-primary">Save changes</button>
                              </div>
                          </g:form>



                      </div>
                  </div>
              </div>
            <button class="btn" data-toggle="modal" data-target="#shareDoc" title="create doc"><i
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

                          <g:form controller="resource" action="createDoc" enctype="multipart/form-data">
                              <div class="modal-body">
                                  <div class="row " style="margin-top: 20px; ">
                                      <label  class="col-sm-5 col-form-label"><b>Document*:</b></label>

                                      <div class="col-sm-7"><input type="file" name= "document"
                                                                   class="form-control shadow p-3 mb-5 bg-white rounded"
                                                                   placeholder="Enter Name" required>
                                      </div>
                                  </div>

                                  <div class="mb-3">
                                      <label for="exampleFormControlTextarea1" class="form-label"><b>Description</b></label>
                                      <textarea class="form-control" id="exampleFormControlTextarea1" name="description" rows="3"></textarea>
                                  </div>

                                  <div class="row">
                                      <label  class="col-sm-5 col-form-label"><b> Topic*:</b></label>

                                      <div class="col-sm-7" required>


                                          <g:select name="topicName" from="${subList.topic.topicName}"></g:select>
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


              <li class="nav-item dropdown" style="margin-left: 40px;">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                ${session.user.firstName}
              </a>

            <g:if test="${session.user.admin}">

                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/user/editProfile">Profile</a></li>
                    <li><a class="dropdown-item" href="/user/admin">Users</a></li>
                    <li><a class="dropdown-item" href="/topic/toplist">Topic</a></li>
                    <li><a class="dropdown-item" href="#">Post</a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="/User/logout">Logout</a></li>
                </ul>
            </g:if>

                  <g:else>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" href="/user/editProfile">Profile</a></li>
                          <li>
                              <hr class="dropdown-divider">
                          </li>
                          <li><a class="dropdown-item" href="/User/logout">Logout</a></li>
                      </ul>
                  </g:else>
            </li>

          </ul>

        </div>
      </div>
    </nav>
        <div></div>

      <div class="container-fluid">
          <div class="row g-3">
              <div class="col-md-6">
                  <div class="row mt-2"> </div>
                  <div class="row mt-2"> </div>
                  <div class="container-fluid"  >
                      <div class="card" style="width: 25rem;" id="profileDiv" >
                          <div class="card-body">

                              <div class="row" >
                                  <div class="col" >
                                      <figure class="figure">
                                          <asset:image src="${session.user.photo}" width="100px" />

                                          <!--     <img src="https://www.searchpng.com/wp-content/uploads/2019/02/User-Icon-PNG.png"
                                            id="pi1" class="figure-img img-fluid rounded" alt="...">-->
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
                                              <a href="#" class="card-link">${scount}</a>

                                          </div>
                                          <div class="col">
                                              <h9 class="text-muted">Topics</h9>
                                              <a href="#" class="card-link">${tcount}</a>

                                          </div>
                                      </div>


                                  </div>

                              </div>

                          </div>
                      </div>

                  </div>
                  <div class="row mt-2"> </div>
                  <div class="row mt-2"> </div>

                  <div class="card" id="cardds">
                      <div class="card-header">
                          <div class="row">
                              <div class="col">
                                  Subscriptions
                              </div>
                              <div class="col-auto">

                                  <a href="#" class="link-primary">View All</a>

                              </div>

                          </div>

                      </div>



                      <g:each in="${subList}" var="it" >
                          <div class="card-body">
                              <div class="row">
                                  <div class="col-auto">
                                      <figure class="figure" id="fif">
                                          <g:link controller="dashboard" action="userPublic" params="[id:it.topic.createdBy.id]"><asset:image src="${it.topic.createdBy.photo}" width="65px" height="80px" /></g:link>

                                      </figure>
                                  </div>
                                  <div class="col">
                                      <div class="row">
                                          <div class="tName">
                                          <g:link controller="topic" action="topicShow" params="[id:it.topic.id]"> ${it.topic.topicName}</g:link>

                                          </div>
                                          </div>

                                      <div class="editTopicName" style="display: none">
                                          <g:form controller="topic" action="editTopic" params="[id:it.topic.id]">
                                              <input type="text" value="${it.topic.topicName}" name="topicName" required/>
                                              <input type="submit" value="save" name="submitButton" class="btn-sm float-right login_btn">
                                          </g:form>
                                      </div>


                                      <div class="row">
                                          <div class="col">

                                              <h9 class="text-muted">Subscriptions:</h9>
                                              <a href="#" class="card-link">${it.topic.subscribers.size()}</a>

                                          </div>

                                          <div class="col">
                                              <h9 class="text-muted">Posts:</h9>
                                              <a href="#" class="card-link">${it.topic.resources.size()}</a>

                                          </div>

                                          <div class="col">
                                              <h9 class="text-muted">@${it.topic.createdBy.userName}</h9>

                                          </div>

                                      </div>


                                  </div>

                              </div>

                              <g:if test="${it.topic.createdBy.email.contains(session.user.email)}">
                                  <div class="row">
                                      <div class="col">
                                          <g:form controller="subscription" action="changeSeriousness">
                                              <g:field type="hidden" name="id" value="${it.topic.id}" ></g:field>
                                              <g:select onChange="submit()" class="form-control" name="seriousness" from="${['CASUAL','SERIOUS','VERY_SERIOUS']}" value="${it.seriousness}" />
                                          </g:form>
                                      </div>
                                      <div class="col">
                                          <g:form controller="subscription" action="changeVisibility">
                                              <g:field type="hidden" name="id" value="${it.topic.id}"></g:field>
                                              <g:select onChange="submit()" class="form-control" name="visibility" from="${['PUBLIC','PRIVATE']}" value="${it.topic.visibility}" />
                                          </g:form>
                                      </div>
                                      <div class="col-auto">
                                          <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                            height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                              <path
                                                      d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z" />
                                          </svg></a>


                                      </div>
                                      <div class="col-auto ">
                                          <div class="buttonChange">
                                              <button type ="submit" id="buttonChange" title="Edit topic"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                                  <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                                              </svg></button>
                                          </div>




                                      </div>
                                      <div class="col">
                                          <g:link controller="topic" action="deleteTopic" params="[id:it.topic.id]" onclick="return confirm('Are you sure you want to delete this item')">
                                              <svg xmlns="http://www.w3.org/2000/svg"
                                                   width="16"
                                                   height="16" fill="currentColor"
                                                   class="bi bi-trash"
                                                   viewBox="0 0 16 16">
                                                  <path
                                                          d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                  <path fill-rule="evenodd"
                                                        d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                              </svg>

                                          </g:link>
                                      </div>

                                  </div>
                              </g:if>

                              <g:else>

                                  <div class="row">
                                      <div class="col">
                                          <g:form controller="subscription" action="changeSeriousness">
                                              <g:field type="hidden" name="id" value="${it.id}"></g:field>
                                              <g:select onChange="submit()" class="form-control" name="seriousness" from="${['CASUAL','SERIOUS','VERY_SERIOUS']}" value="${it.seriousness}" />
                                          </g:form>
                                      </div>


                                      <div class="col-auto" style="margin-left: 150px">
                                          <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                            height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                              <path
                                                      d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z" />
                                          </svg></a>

                                      </div>

                                      <g:link style="display:inline-block" controller="subscription" action="unsubscribe" params="[id:it.id]">Unsubscribe</g:link>
                                  </div>
                              </g:else>



                          </div>
                      </g:each>
                  </div>



                  <div class="row mt-2"> </div>
                  <div class="row mt-2"> </div>

                  <div class="card" id="carddk">
                      <div class="card-header">
                          Trending Topics
                      </div>
                      <g:each in="${trendList}" var="it">
                          <div class="card-body">

                              <div class="row">
                                  <div class="col-auto">
                                      <figure class="figure" id="fif">
                                        <g:link controller="dashboard" action="userPublic" params="[id:it.createdBy.id]"><asset:image src="${it.createdBy.photo}" width="65px" height="80px"/></g:link>
                                      </figure>
                                  </div>

                                  <div class="col">
                                      <div class="row">
                                          <h5 class="card-title">
                                              <g:link controller="topic" action="topicShow" params="[id:it.id]"> ${it.topicName}</g:link>
                                          </h5>

                                      </div>

                                      <div class="row">
                                          <div class="col">

                                              <h9 class="text-muted">Subscriptions</h9>
                                              <a href="#" class="card-link">${it.subscribers.size()}</a>

                                          </div>

                                          <div class="col">
                                              <h9 class="text-muted">Posts:</h9>
                                              <a href="#" class="card-link">${it.resources.size()}</a>

                                          </div>

                                          <div class="col">
                                              <h9 class="text-muted">@${it.createdBy.userName}</h9>


                                          </div>

                                      </div>
                                      <g:if test="${it.createdBy.userName.equals(session.user.userName)}">
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
                                                  <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg"
                                                                                    width="16"
                                                                                    height="16" fill="currentColor"
                                                                                    class="bi bi-envelope"
                                                                                    viewBox="0 0 16 16">
                                                      <path
                                                              d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                                                  </svg></a>

                                              </div>

                                              <div class="col-auto">
                                                  <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg"
                                                                                    width="16"
                                                                                    height="16" fill="currentColor"
                                                                                    class="bi bi-plus-circle"
                                                                                    viewBox="0 0 16 16">
                                                      <path
                                                              d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                                      <path
                                                              d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                                  </svg></a>

                                              </div>

                                              <div class="col">
                                                  <g:link controller="topic" action="deleteTopic" params="[id:it.id]" onclick="return confirm('Are you sure you want to delete this item')">
                                                      <svg xmlns="http://www.w3.org/2000/svg"
                                                           width="16"
                                                           height="16" fill="currentColor"
                                                           class="bi bi-trash"
                                                           viewBox="0 0 16 16">
                                                          <path
                                                                  d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                          <path fill-rule="evenodd"
                                                                d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                      </svg>

                                                  </g:link>
                                              </div>

                                          </div>

                                      </g:if>


                                      <g:else>
                                          <g:if test="${it.subscribers.user.email.contains(session.user.email)}">
                                              <g:link controller="subscription" action="unsubsTrend" params="[id:it.id]">Unsubscribe</g:link>
                                              <div class="col">
                                                  <g:form controller="subscription" action="changeSeriousness">
                                                      <g:field type="hidden" name="id" value="${it.id}"></g:field>
                                                      <g:select onChange="submit()" class="form-control" name="seriousness" from="${['CASUAL','SERIOUS','VERY_SERIOUS']}" value="${linksharing.Subscription.findByUserAndTopic(session.user,it).seriousness}" />
                                                  </g:form>
                                              </div>

                                          </g:if>
                                          <g:else>
                                              <g:link controller="subscription" action="subscribe" params="[id:it.id]">subscribe</g:link>

                                          </g:else>
                                      </g:else>
                                  </div>

                              </div>
                          </div>
                      </g:each>

                  </div>





              </div>
              <div class="col-md-6">
                  <div class="row mt-2"> </div>
                  <div class="row mt-2"> </div>

                  <div class="card" id="cardd">
                      <div class="card-header">
                          <div class="row">
                              <div class="col">
                                  <h5>Inbox</h5>
                              </div>
                              <div class="col-auto">
                                  <div class="container">
                                      <div class="dropdown">
                                          <button class="btn btn-primary dropdown-toggle" type="button"
                                                  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                  aria-expanded="false">
                                              Search
                                          </button>
                                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                              <a class="dropdown-item" href="#">Today</a>
                                              <a class="dropdown-item" href="#">1 week</a>
                                              <a class="dropdown-item" href="#">1 Month</a>
                                              <a class="dropdown-item" href="#">1 Year</a>
                                          </div>
                                      </div>
                                  </div>
                              </div>

                          </div>
                      </div>

                      <g:each in="${unread}" var="it">
                          <g:if test="${it.resource.createdBy.userName != (session.user.userName)}">
                              <div class="card-body">
                                  <div class="row">
                                      <div class="col-auto">
                                          <figure class="figure" id="fif">
                                              <asset:image src="${it.resource.createdBy.photo}" width="65px" height="80px"/>
                                          </figure>
                                      </div>
                                      <div class="col">
                                          <div class="row">
                                              <div class="col">
                                                  <h5 class="card-title">${it.resource.createdBy.firstName} ${it.resource.createdBy.lastName} <h6
                                                          class="card-subtitle mb-2 text-muted">@${it.resource.createdBy.userName}
                                                      ${it.resource.lastUpdated}</h6>
                                                  </h5>
                                              </div>
                                              <div class="col">
                                                  <div class="mb-3">
                                                      <a href="#" class="link-primary">${it.resource.topic.topicName}</a>
                                                  </div>
                                              </div>
                                          </div>
                                          <p class="card-text">${it.resource.description}</p>

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
                                              <g:if test="${it.resource.hasProperty("filePath")}">
                                                  <div class="col-auto">
                                                      <div class="mb-3">
                                                          <g:link controller="resource" action="saveFile" params="[id:it.id]" class="link-primary">Download</g:link>
                                                      </div>
                                                  </div>
                                              </g:if>

                                              <g:else>
                                                  <div class="col-auto">
                                                      <div class="mb-3">
                                                          <a href="${it.resource.link}" target="_blank" class="link-primary">Open Link</a>
                                                      </div>
                                                  </div>
                                              </g:else>


                                              <div class="col-auto">
                                                  <div class="mb-3">
                                                     <g:link controller="resource" action="markRead" params="[id: it.resource.id]">Mark as Read</g:link>
                                                  </div>
                                              </div>
                                              <div class="col-auto">
                                                  <div class="mb-3">
                                                      <g:link controller="dashboard" action="viewpost" params="[id:it.resource.id]">
                                                          View post
                                                      </g:link>
                                                  </div>
                                              </div>

                                          </div>

                                      </div>

                                  </div>
                              </div>
                          </g:if>

                      </g:each>
                  </div>

              </div>
              <div class="row-mt-2"></div>

          </div>
      </div>







</div>

  </div>

<script>
    $(document).ready(function(){
        $(".buttonChange").click(function(){
            $(".tName").hide();
            $(".editTopicName").toggle("slow");
        });
    });
</script>

  %{--<script>

var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})
  </script>
--}%</body>

</html>